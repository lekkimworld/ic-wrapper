package org.openntf.icw;

import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Serializable;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.MessageFormat;

public class Context implements Serializable {
	// constants
	private static final long serialVersionUID = 2023121277727033638L;
	
	// declarations
	private IURLFactory factory = null;
	protected String contextSearch = IConstants.CONTEXT_SEARCH;
	protected String contextHomepage = IConstants.CONTEXT_HOMEPAGE;
	protected String title = "IBM Connections Extractor";
	protected String releaseString = null;
	protected String hostname = null;
	protected String language = IConstants.LANGUAGE_EN_US;
	protected String username = null;
	protected String password = null;
	protected boolean secure = true;
	protected String ltpatoken = null;
	protected String tokenName = IConstants.TOKENNAME_LTPATOKEN2;
	protected Proxy proxy = Proxy.NO_PROXY;
	
	public Context setReleaseString(String release) {
		this.releaseString = release;
		return this;
	}
	
	public String getReleaseString() {
		return this.releaseString;
	}
	
	public Context setHostname(String hostname) {
		if (null == hostname || hostname.isEmpty()) throw new IllegalArgumentException("Missing hostname");
		this.hostname = hostname.endsWith("/") ? hostname.substring(0, hostname.length()-1) : hostname;
		return this;
	}
	
	public Context setContextHomepage(String context) {
		this.contextHomepage = context;
		return this;
	}
	
	public Context setContextSearch(String context) {
		this.contextSearch = context;
		return this;
	}
	
	public Context setProxy(Proxy proxy) {
		if (null == proxy) {
			this.proxy = Proxy.NO_PROXY;
		} else {
			this.proxy = proxy;
		}
		return this;
	}
	
	public Context setLanguage(String lang) {
		this.language = lang;
		return this;
	}
	
	public Context setTokenName(String tokenName) {
		if (null == tokenName || tokenName.isEmpty()) throw new IllegalArgumentException("Must supply the name of the LTPA token cookie");
		this.tokenName = tokenName;
		return this;
	}
	
	public Context setTokenValue(String token) {
		if (null == token || token.isEmpty()) {
			this.ltpatoken = null;
		} else {
			this.ltpatoken = token;
		}
		return this;
	}
	
	public Context setCredentials(String username, String password) {
		this.username = username;
		this.password = password;
		return this;
	}
	
	public boolean hasLtpaToken() {
		return (this.ltpatoken != null);
	}
	
	public Context setURLFactory(IURLFactory factory) {
		this.factory = factory;
		return this;
	}
	
	public org.openntf.icw.URL getURL() {
		if (null == this.factory) {
			return new org.openntf.icw.URL(this);
		} else {
			return this.factory.getURL(this);
		}
	}
	
	public HttpURLConnection ensureLtpaToken(HttpURLConnection con) throws Exception {
		// set token if we already have it
		if (this.hasLtpaToken()) {
			String ltpaTokenCookie = this.tokenName + "=" + this.ltpatoken;
			con.setRequestProperty("Cookie", ltpaTokenCookie);
			return con;
		}
		
		// we need to create a new request
		String strLogin = "j_username=" + this.username + "&j_password="+ this.password + "&secure=&fragment=&service.name=\n";
		String strUrl = MessageFormat.format(IConstants.TEMPLATE_LOGIN, this.hostname, this.contextHomepage);
		URL url = new URL(strUrl);
		HttpURLConnection conAuth = (HttpURLConnection)url.openConnection(this.proxy);
		conAuth.setRequestMethod("POST");
		conAuth.setDoInput(true);
		conAuth.setDoOutput(true);
		conAuth.setRequestProperty("Host", this.hostname);
		conAuth.setRequestProperty("conAuthtent-Type", "application/x-www-form-urlencoded");
		conAuth.setRequestProperty("conAuthtent-Language", "en-US");
		conAuth.setRequestProperty("conAuthtent-Length", String.valueOf(strLogin.length()));
		conAuth.setRequestProperty("Cookie", "WASReqURL=http://" + this.hostname + this.contextHomepage + "/web/widgets/");
		PrintWriter pwOut = new PrintWriter(new OutputStreamWriter(conAuth.getOutputStream(), Charset.forName("UTF-8")));
		pwOut.print(strLogin);
		pwOut.flush();
		pwOut.close();
		
		// get headers
		String token = LtpaToken.getTokenSet(conAuth.getHeaderFields(), this.tokenName);
		if (null != token && !token.isEmpty()) {
			this.ltpatoken = token;
		} else {
			// unable to get token
			throw new Exception("Unable to obtain LTPA token");
		}
		
		// recurse
		return this.ensureLtpaToken(con);
	}
	
	public interface IURLFactory {
		public org.openntf.icw.URL getURL(Context ctx);
	}
}
