package org.openntf.icw;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;

public class Extracter {
	// declarations
	private String ltpaToken = null;
	private String ltpaToken2 = null;
	private String username = null;
	private String password = null;
	private String hostname = null;
	private boolean https = false;
	private String title = null;
	private int height = 20000;
	private String login = "/homepage/j_security_check";
	private String template = "/search/web/jsp/advancedSearch.jsp";
	
	public Extracter setHostname(String h) {
		this.hostname = h;
		return this;
	}
	
	public Extracter setTitle(String t) {
		this.title = t;
		return this;
	}
	
	public Extracter setHeight(int height) {
		this.height = height;
		return this;
	}
	
	public Extracter setHttps(boolean https) {
		this.https = https;
		return this;
	}
	
	public Extracter setLtpaToken(String t) {
		this.ltpaToken = t;
		return this;
	}
	
	public Extracter setLtpaToken2(String t) {
		this.ltpaToken2 = t;
		return this;
	}
	
	public Extracter setCredentials(String username, String password) {
		this.username = username;
		this.password = password;
		return this;
	}
	
	public String extract(String iframeurl) throws Exception {
		URL url = new URL("https://" + this.hostname + this.template);
		HttpURLConnection con = this.ensureLtpaToken((HttpURLConnection)url.openConnection());
		
		StringBuilder sb = new StringBuilder();
		String line = null;
		
		BufferedReader r = new BufferedReader(new InputStreamReader(con.getInputStream()));
		while (null != (line=r.readLine())) {
			sb.append(line).append('\n');
		}
		
		int k=0;
		String[][] lookfor = new String[10][3];
		if (null != this.title) {
			lookfor[k][0] = "<title>";
			lookfor[k][1] = "</title>";
			lookfor[k++][2] = "<title>" + this.title + "</title>";
		}
		lookfor[k][0] = "<div class=\"lotusTitleBar2\">";
		lookfor[k][1] = "<div class=\"lotusMain\">";
		lookfor[k++][2] = null;
		lookfor[k][0] = "<div class=\"lotusColLeft\" role=\"complementary\">";
		lookfor[k][1] = "<div class=\"lotusContent\" role=\"main\">";
		lookfor[k++][2] = "<iframe id=\"icw_iframe\" src=\"" + (this.https ? "https" : "http") + "://" + iframeurl + "\" height=\"" + this.height + "px\" width=\"100%\" style=\"border: 0\" border=\"0\"></iframe>";
		lookfor[k][0] = "<div class=\"lotusContent\" role=\"main\">";
		lookfor[k][1] = "</table></div></div>";
		lookfor[k++][2] = "</div></div>";
		
		for (int i=0; i<k; i++) {
			int idx1 = sb.indexOf(lookfor[i][0]);
			int idx2 = sb.indexOf(lookfor[i][1], idx1);
			if (idx2 <= idx1) continue;
			
			String replacement = (null != lookfor[i][2] ? lookfor[i][2] : "");
			sb.replace(idx1, idx2, replacement); 
		}
		
		return sb.toString();
	}
	
	private HttpURLConnection ensureLtpaToken(HttpURLConnection con) throws Exception {
		// get token if we already have it
		String ltpaTokenCookie = this.composeLtpaToken();
		if (null != ltpaTokenCookie) {
			con.setRequestProperty("Cookie", ltpaTokenCookie);
			return con;
		}
		
		// we need to create a new request
		String strLogin = "j_username=" + this.username + "&j_password="+ this.password + "&secure=&fragment=&service.name=\n";
		URL url = new URL("https://" + this.hostname + this.login);
		HttpURLConnection conAuth = (HttpURLConnection)url.openConnection();
		conAuth.setRequestMethod("POST");
		conAuth.setDoInput(true);
		conAuth.setDoOutput(true);
		conAuth.setRequestProperty("Host", hostname);
		conAuth.setRequestProperty("conAuthtent-Type", "application/x-www-form-urlencoded");
		conAuth.setRequestProperty("conAuthtent-Language", "en-US");
		conAuth.setRequestProperty("conAuthtent-Length", String.valueOf(strLogin.length()));
		conAuth.setRequestProperty("Cookie", "WASReqURL=http://" + this.hostname + "/homepage/web/widgets/");
		PrintWriter pwOut = new PrintWriter(new OutputStreamWriter(conAuth.getOutputStream(), Charset.forName("UTF-8")));
		pwOut.print(strLogin);
		pwOut.flush();
		pwOut.close();
		
		// get headers
		String[] tokens = LtpaToken.getTokensSet(conAuth.getHeaderFields());
		this.ltpaToken = tokens[0];
		this.ltpaToken2 = tokens[1];
		
		// set cookie
		ltpaTokenCookie = this.composeLtpaToken();
		con.setRequestProperty("Cookie", ltpaTokenCookie);
		return con;
	}
	
	private String composeLtpaToken() {
		// abort early
		if (null == this.ltpaToken && null == ltpaToken2) return null;
		
		// compose it
		String ltpaTokenCookie = null;
		if (null != ltpaToken2) {
			ltpaTokenCookie = "LtpaToken2=" + ltpaToken2;
		}
		if (null != ltpaToken) {
			ltpaTokenCookie = (null != ltpaTokenCookie ? "; " : "") + "LtpaToken=" + ltpaToken;
		}
		return ltpaTokenCookie;
	}
}
