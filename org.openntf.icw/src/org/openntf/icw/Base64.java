package org.openntf.icw;

public class Base64 {

	static String base64Code = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
	static char base64Pad = '=';

	static char[] mChar = new char[64];
	static int[] mVal = new int[256];

	static {
		char c;
		for (int i=0; i<64; i++) {
			c = base64Code.charAt(i);
			mChar[i] = c;
			mVal[c] = (byte)(i+2); 
		}
		mVal[(byte)base64Pad] = 1;
	}

	public static char[] encodeToCharArray(byte[] arr, boolean crlf ) 
	{
		int r,i,x,alen,llen;
		
		alen = arr.length;
		
		if (alen==0) return new char[0];
		
		// Setup result length
		r = ((alen+2)/3)*4;
		if (crlf) r+= ((r-1)/76)*2;
		char[] result = new char[r];
		
		// Calc data
		i = 0;
		r = 0;
		llen = 0;
		
		while (i<alen-3) {
			x = (arr[i++] & 0xff)<<16 | (arr[i++] & 0xff)<<8 | (arr[i++] & 0xff);
			result[r++] = mChar[(x>>18) & 0x3f];
			result[r++] = mChar[(x>>12) & 0x3f];
			result[r++] = mChar[(x>>6)  & 0x3f];
			result[r++] = mChar[ x      & 0x3f];

			if (crlf) {
				llen++;
				if (llen>=19 && i<alen) {
					result[r++] = '\r';
					result[r++] = '\n';
					llen = 0;
				}
			}
		}
		
		// Handle last 3 bytes
		switch (alen-i) {
		case 1 : x = (arr[i++] & 0xff)<<16; break;
		case 2 : x = (arr[i++] & 0xff)<<16 | (arr[i++] & 0xff)<<8; break;
		case 3 : x = (arr[i++] & 0xff)<<16 | (arr[i++] & 0xff)<<8 | (arr[i++] & 0xff); break;
		default : x = 0;
		}
		result[r++] = mChar[(x>>18) & 0x3f];
		result[r++] = mChar[(x>>12) & 0x3f];
		result[r++] = mChar[(x>>6)  & 0x3f];
		result[r++] = mChar[ x      & 0x3f];
		
		// Add padding
		x = alen % 3;
		if (x>0) {
			for (i=1; i<=3-x; i++) { 
				result[--r] = base64Pad;
			}
		}
		return result;
	}
	
	public static String encodeToString(byte[] arr, boolean crlf )
	{
		// Faster than using StringBuffer and StringBuilder
		return new String(encodeToCharArray(arr, crlf ));
	}
	

	
	public static byte[] decode(String s) 
	{
		int i,j,x;
		int v;
		int slen,len,pad;
		int count =0;
		
		slen = (s==null)?0:s.length();
		if (slen==0) return new byte[0];
		
		len = 0;
		pad = 0;
		for (i=0; i<slen; i++) {
			v = mVal[ s.charAt(i) ];
			if (v>0) len++;
			if (v==1) pad++;
		}
		
		// Input length (trim'ed) has to be modulus of 4
		if (len%4 !=0) return null;
		
		// Find result length
		len = len*3/4-pad;
		byte[] result = new byte[len];  
		
		// Process
		x = 0; j = 3;
		for (i=0; i<s.length(); i++) {
			v = mVal[ s.charAt(i) ];
			if (v>0) {  // Only valid chars and pad
				if (v>1) { // Valid chars
					x = (x<<6) | (v-2);
				} else {  // Pad
					x = (x<<6);
					pad++;
				}
				if (j==0) {
					result[count++] = (byte)(x>>16);
					if (count<len) { 
						result[count++] = (byte)(x>>8);
						if (count<len) {
							result[count++] = (byte)(x);
						}
					}
					x = 0; j = 3;
					if (count>=len) break;
				} else {
					j--;
				}
			}
		}
		
		return result;
	}
	
}
