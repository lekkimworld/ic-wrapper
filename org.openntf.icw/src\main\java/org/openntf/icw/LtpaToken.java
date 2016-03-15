package org.openntf.icw;

import java.util.List;
import java.util.Map;

public class LtpaToken {
	
	public static String getTokenSet(Map<String, List<String>> headers, String tokenName) {
		// get headers
		List<String> cookieHeaders = headers.get("Set-Cookie");
		for (String cookieHeader : cookieHeaders) {
			String result = getToken(cookieHeader, true, tokenName);
			if (null != result) return result;
		}
		return null;
	}
	
	public static String getToken(String cookieHeader, String tokenName) {
		return getToken(cookieHeader, false, tokenName);
	}
	
	public static String getToken(String cookieHeader, boolean setCookie, String tokenName) {
		String[] cookies = cookieHeader.split(setCookie ? "," : ";");
		for (String cookie : cookies) {
			if (cookie.charAt(0) == ' ') cookie = cookie.trim();
			if (cookie.startsWith(tokenName)) {
				String v = cookie.split(";")[0];
				int idx = v.indexOf('=');
				String name = v.substring(0, idx);
				String value = v.substring(idx+1);
				if (name.equals(tokenName)) {
					return value;
				}
			}
		}
		return null;
	}

}
