package org.openntf.icw;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExtracterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// declarations
	private String hostname = null;
	private String title = null;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		this.hostname = this.getInitParamStr(config, "hostname", null);
		this.title = this.getInitParamStr(config, "title", null);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// create extractor
		Extracter e = new Extracter();
		
		// see if user is logged in
		if (null != req.getRemoteUser()) {
			// get token
			String[] tokens = LtpaToken.getTokens(req.getHeader("Cookie"));
			if (null == tokens[0] && null == tokens[1]) {
				// user is logged in but there is no token - invalid'
				resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "We detected a remote user but no LtpaToken(s) are available.");
				return;
			} else {
				e.setLtpaToken(tokens[0]);
				e.setLtpaToken2(tokens[1]);
			}
		}
		
		// get response writer
		PrintWriter pwResp = resp.getWriter();
		
		// set hostname
		if (null == this.hostname) {
			e.setHostname(req.getRemoteHost());
		} else {
			e.setHostname(this.hostname);
		}
		
		// set title
		String reqTitle = req.getParameter("title");
		if (null != reqTitle) {
			e.setTitle(reqTitle);
		} else if (null != this.title) {
			e.setTitle(this.title);
		}
		
		try {
			String result = e.extract(req.getParameter("url"));
			pwResp.print(result);
			
		} catch (Throwable t) {
			t.printStackTrace();
		}
	}
	
	private String getInitParamStr(ServletConfig config, String key, String defaultValue) {
		String value = config.getInitParameter(key);
		if (null == value || value.length() == 0) return defaultValue;
		return value;
	}
}
