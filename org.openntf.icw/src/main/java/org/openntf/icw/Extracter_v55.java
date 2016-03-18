package org.openntf.icw;

import java.text.MessageFormat;

public class Extracter_v55 extends AbstractExtracter {
	
	public Extracter_v55(Context ctx) {
		super(ctx);
	}
	
	public String[] extract(MECHANISM mechanism) throws Exception {
		// compute URL to advanced search and load data
		String url = MessageFormat.format(IConstants.TEMPLATE_ADVANCEDSEARCH, this.ctx.hostname, this.ctx.contextSearch, this.ctx.language);
		URL loader = ctx.getURL();
		final CharSequence data = loader.GET(url, true);
		
		switch (mechanism) {
		case PURE:
			return this.extractPure(data.toString());
		}
		
		// return null
		return null;
	}
	
	private String[] extractPure(final String data) {
		// replace title
		String[] result1 = this.extractBetween(data, "<title>", "</title>", true, true);
		
		// remove search title bar
		result1[1] = this.replaceBetween(result1[1], "<div class=\"lotusTitleBar2\">", "</div>\n \n \n<div class=\"lotusMain\">", "", false);
		
		// remove left column
		result1[1] = this.replaceBetween(result1[1], "<div class=\"lotusColLeft\"", "<div class=\"lotusContent\"", "", false);
		
		// remove body
		String[] result2 = this.extractBetween(result1[1], "<div class=\"lotusContent\" role=\"main\">", "</table></div></div>", false, true);
		result2[1] = result2[1].substring(8);
		
		// return
		return new String[]{result1[0], result2[0], result2[1]};
	}
	
	
}
