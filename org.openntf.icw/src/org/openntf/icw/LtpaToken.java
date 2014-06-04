package org.openntf.icw;

import java.util.List;
import java.util.Map;

public class LtpaToken {
	
	public static String[] getTokensSet(Map<String, List<String>> headers) {
		String[] result = new String[2];
		
		// get headers
		List<String> cookieHeaders = headers.get("Set-Cookie");
		for (String cookieHeader : cookieHeaders) {
			result = getTokens(cookieHeader, true);
		}
		return result;
	}
	
	public static String[] getTokens(String cookieHeader) {
		return getTokens(cookieHeader, false);
	}
	
	public static String[] getTokens(String cookieHeader, boolean setCookie) {
		String[] result = new String[2];
		
		String[] cookies = cookieHeader.split(setCookie ? "," : ";");
		for (String cookie : cookies) {
			if (cookie.charAt(0) == ' ') cookie = cookie.trim();
			if (cookie.startsWith("LtpaToken")) {
				String v = cookie.split(";")[0];
				int idx = v.indexOf('=');
				String name = v.substring(0, idx);
				String value = v.substring(idx+1);
				if (name.equals("LtpaToken2")) {
					result[1] = value;
				} else if (name.equals("LtpaToken")) {
					result[0] = value;
				}
			}
		}
		return result;
	}

}
