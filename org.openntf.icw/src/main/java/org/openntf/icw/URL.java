package org.openntf.icw;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.nio.charset.Charset;

public class URL {
	// declarations
	private Context ctx = null;
	
	public URL(Context ctx) {
		this.ctx = ctx;
	}
	
	/**
	 * Does a GET request to the supplied endpoint adding authentication 
	 * information if requested and we do not have an LTPA token.
	 * 
	 * @param endpoint
	 * @return
	 * @throws Exception
	 */
	public CharSequence GET(String endpoint, boolean auth) throws Exception {
		String endpointUse = endpoint;
		if (this.ctx.debug) {
			if (endpoint.contains("?")) {
				endpoint += "&debug=true";
			} else {
				endpoint += "?debug=true";
			}
		}
		java.net.URL url = new java.net.URL(endpointUse);
		HttpURLConnection con = (HttpURLConnection)url.openConnection(this.ctx.proxy);
		if (auth) {
			con = this.ctx.ensureLtpaToken(con);
		}
		
		// read data
		StringBuilder sb = new StringBuilder();
		String line = null;
		BufferedReader r = new BufferedReader(new InputStreamReader(con.getInputStream(), Charset.forName("UTF-8")));
		while (null != (line=r.readLine())) {
			sb.append(line).append('\n');
		}
		con.disconnect();
		
		// return
		return sb;
	}
	
	
	
}
