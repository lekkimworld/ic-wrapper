package org.openntf.icw;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.openntf.icw.AbstractExtracter.MECHANISM;

public class ExtracterServlet extends HttpServlet {
	// constants
	private static final long serialVersionUID = 1L;
	
	// logger
	private static final Logger logger = Logger.getLogger(ExtracterServlet.class.getPackage().getName());
	
	// declarations
	private String hostname = null;
	private String langDefault = null;
	private String tokenName = null;
	private String title = null;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		this.hostname = this.getInitParamStr(config, "hostname", null);
		this.langDefault = this.getInitParamStr(config, "lang", IConstants.LANGUAGE_EN_US);
		this.tokenName = this.getInitParamStr(config, "tokenName", IConstants.TOKENNAME_LTPATOKEN2);
		this.title = this.getInitParamStr(config, "title", "IBM Connections Extracter");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// create context
		Context ctx = new Context();
		ctx.setTokenName(this.tokenName);
		ctx.setHostname(this.hostname);
		
		if (null != req.getCookies()) {
			// get LTPA token and make sure we have it
			for (Cookie cookie : req.getCookies()) {
				if (cookie.getName().equals(ctx.tokenName)) {
					// get value
					String cookieValue = cookie.getValue();
					ctx.setTokenValue(cookieValue);
					break;
				}
			}
		}
		if (!ctx.hasLtpaToken()) {
			logger.warning("We detected a remote user but no LtpaToken(s) are available - remember to map all authenticated users to the user role in WAS ISC.");
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "We detected a remote user but no LtpaToken(s) are available.");
			return;
		}
		
		// get language and set in context
		String reqLang = req.getParameter("lang");
		if (null == reqLang || reqLang.length() == 0) {
			// get language in url - look at cookies
			for (Cookie cookie : req.getCookies()) {
				if (cookie.getName().equalsIgnoreCase("lcLang")) {
					reqLang = cookie.getValue();
					break;
				}
			}
			if (null == reqLang || reqLang.length() == 0) {
				// no language cookie - get default language
				reqLang = this.langDefault;
			}
		} else {
			// language is set in url - set cookie
			resp.addCookie(new Cookie("lcLang", reqLang));
		}
		ctx.setLanguage(reqLang);
		
		// create extractor (based on detected version)
		AbstractExtracter e = null;
		try {
			e = AbstractExtracter.getExtractor(ctx);
		} catch (Throwable t) {
			// unable to detect version
			String msg = "Unable to determine which extractor to use based on release string (" + ctx.releaseString + ") - maybe you are running an unsupported version";
			logger.log(Level.SEVERE, msg, t);
			resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, msg);
			return;
		}
		
		// get iframe height
		int reqHeight = -1;
		try {
			reqHeight = Integer.parseInt(req.getParameter("height"));
		} catch (Throwable t) {}
		if (reqHeight < 50) {
			reqHeight = 20000;
		}
		
		// get iframe url
		String reqUrl = req.getParameter("url");
		
		// extract
		String[] result = null;
		try {
			result = e.extract(MECHANISM.PURE);
		} catch (Throwable t) {
			logger.log(Level.SEVERE, "Unable to extract data based on PURE strategy", t);
			resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Unable to extract data based on PURE strategy");
			return;
		}
		
		// build iframe url
		final String html_iframe = "<iframe id=\"icw_iframe\" src=\"" + reqUrl + "\" height=\"" + reqHeight + "px\" width=\"100%\" style=\"border: 0\" border=\"0\"></iframe>";
		
		// build result and send it
		StringBuilder b = new StringBuilder();
		b.append(result[0]).append(this.title).append(result[1]).append(html_iframe).append(result[2]);
		PrintWriter pwResp = resp.getWriter();
		pwResp.print(b.toString());
	}
	
	private String getInitParamStr(ServletConfig config, String key, String defaultValue) {
		String value = config.getInitParameter(key);
		if (null == value || value.length() == 0) return defaultValue;
		return value;
	}
}
