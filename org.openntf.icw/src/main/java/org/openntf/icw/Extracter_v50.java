package org.openntf.icw;

import java.text.MessageFormat;

public class Extracter_v50 extends AbstractExtracter {
	// declarations
	
	public Extracter_v50(Context ctx) {
		super(ctx);
	}
	
	public String[] extract(MECHANISM mechanism) throws Exception {
		// compute URL to advanced search and load data
		String url = MessageFormat.format(IConstants.TEMPLATE_ADVANCEDSEARCH, this.ctx.hostname, this.ctx.contextHomepage, this.ctx.language);
		URL loader = new URL(this.ctx);
		final CharSequence data = loader.GET(url, true);
		
		switch (mechanism) {
		case PURE:
			return this.extractPure(data.toString());
		}
		
		// return null
		return null;
	}
	
	private String[] extractPure(String data) throws Exception {		
		// extract before and after title
		String[] result1 = this.extractBetween(data.toString(), "<title>", "</title>", false, false);
		
		// remove search title bar
		result1[1] = this.replaceFrom(result1[1], "<div class=\"lotusTitleBar2\">", "</div><div class=\"lotusMain\">", "");
		
		// remove left column
		result1[1] = this.replaceFrom(result1[1], "<div class=\"lotusColLeft\"", "<div class=\"lotusContent\"", "");
		
		// remove body
		String[] result2 = this.extractBetween(result1[1], "<div class=\"lotusContent\" role=\"main\">", "</table></div></div>", false, false);
		result2[1] = result2[1].substring(8);
		
		// return
		return new String[]{result1[0], result1[1], result2[0], result2[1]};
		
	}
}
