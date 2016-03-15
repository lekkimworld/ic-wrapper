package org.openntf.icw;

import java.text.MessageFormat;

public abstract class AbstractExtracter {
	// enum
	public enum MECHANISM {
		/**
		 * Returns data with a single replacement target.
		 */
		PURE
	}
	
	// declarations
	protected Context ctx = null;
	protected String lang = null;
	protected String title = null;
	protected int height = 20000;
	protected String template = "/search/web/jsp/advancedSearch.jsp";
	protected String about = "/{0}/html/aboutView.do";
	
	/**
	 * If you are unsure what {@link AbstractExtracter extracter} to use call this method. This 
	 * method will get the about page and extract the version and map to an extracter.
	 * 
	 * @param profileContext
	 * @return
	 */
	public static AbstractExtracter getExtractor(Context ctx) throws Exception {
		String url = MessageFormat.format(IConstants.TEMPLATE_ABOUTVIEW, ctx.hostname, ctx.contextHomepage);
		URL loader = new URL(ctx);
		
		CharSequence c = loader.GET(url, true);
		String body = c.toString();
		int idx1 = body.indexOf("<td class=\"lotusBuild\">");
		int idx2 = body.indexOf("</td>", idx1);
		if (idx1 > 0 && idx2 > 0 && idx2 > idx1+23) {
			// get release
			final String release = body.substring(idx1+23, idx2);
			ctx.setReleaseString(release);
			if (release.startsWith("Release v5.5")) {
				return new Extracter_v55(ctx);
			} else if (release.startsWith("Release v5.0")) {
				return new Extracter_v50(ctx);
			}
		}
		return null;
	}
	
	public static void main(String[] args) {
		Context ctx = new Context();
		ctx.setHostname("inside.intravision.dk");
		ctx.setCredentials("mh", "jun06cloud");
			
		try {
			AbstractExtracter e = AbstractExtracter.getExtractor(ctx);
			System.out.println(ctx.releaseString);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public AbstractExtracter(Context ctx) {
		this.ctx = ctx;
	}
	
	protected String replaceFrom(String data, String start, String end, String replace) {
		return this.replaceBetween(data, start, end, replace, false);
	}
	
	protected String replaceBetween(String data, String start, String end, String replace, boolean excludeStart) {
		int idx1 = data.indexOf(start);
		if (idx1 < 0) return null;
		int idx2 = data.indexOf(end, idx1 + start.length());
		if (idx2 < 0) return null;
		
		return data.substring(0, idx1 + (excludeStart ? 0 : start.length()));
	}
	
	protected String[] extractBetween(String data, String start, String end, boolean excludeStart, boolean excludeEnd) {
		int idx1 = data.indexOf(start);
		if (idx1 < 0) return null;
		int idx2 = data.indexOf(end, idx1+1);
		if (idx2 < 0) return null;
		String[] result = {
				data.substring(0, idx1 + (excludeStart ? start.length() : 0)), 
				data.substring(idx2 + (excludeEnd ? 0 : end.length()))
		};
		return result;
	}
	
	public abstract String[] extract(MECHANISM mechanism) throws Exception;
}
