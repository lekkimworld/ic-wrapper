package org.openntf.icw;

import java.text.MessageFormat;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

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
		case ALL:
			return this.extractAll(data.toString());
		case LEFT_COLUMN:
			return this.extractLeftColumn(data.toString());
		case JSOUP:
			return this.extractJsoup();
		}
		
		// return null
		return null;
	}
	
	private String[] extractAll(final String data) {
		// replace title
		String[] result = this.extractBetween(data, "<title>", "</title>", true, true);
		return result;
	}
	
	private String[] extractJsoup() {
		try {
			Document doc = Jsoup.connect("http://inside.intravision.dk/homepage/web/jsp/about.jsp").cookie("LtpaToken2", "LjYJWlQ/oIMIZyYtA0CIvBwiIWGfzlZlPdDfynQwySeLC18abHWm9z/JvmhCoY6voUPfEopdsK1SAY/NQVjy9zBpBeKvVkOlmUjp3MPOwCOCrrOEuXMjX9KRQU0FnpDBTbK7ENJajiuzQ72qGjF0Kueo9IiZj8PC4CJP57GUnDeGSMwqNw0miqK7fvSVWjzKGhY1ICo9Wrvn0eIcSQo1Jkc/E4jPX/ERSJbKhzBepynlQliPotixgzZvynIs1TkcY1x0FymI7FGlFNTrXdQcSbCsNT6Oj81j6uTXm+6TwfYeVmGA/WgNeKQ/QFnxdmYPuEj2FJAkAjNrDaBrOBJxSioB3AOtSbSw/3/Tj1XVJy1khCUZ7HjZCsEsZPuiQiFJ00yxl5reyCikvRAaJKFSvb8lEmDsg8wV5tEI1s+oG1BtndQP98DTESRf87jgAar0qig6/v6m7MnhPY875MdPayvG3jqAmM+vWsiFWsubnK3s4kAGCDHahWc6cUrRQr15PABJiuEdowcAfKvzwmo/tZswtrmQtz8yHMBqmVliRj4IvtpmT10Nq7b2ZPP7ND118xbfd9UY2pLus0b1QqLAusKIXcZr38qtXsmWV5I/9qUSEK6jWvbA/A2l2ijZMgl8zXSq9A0rECghXzrxJ8jU1Mdb6itOvkLJ3zfnonXDp7AZCO28qf8WXIF1IZSmDM8F").get();
			Elements elems = doc.select("#lotusContent");
			elems.get(0).remove();
			elems = doc.select("#lotusColRight");
			elems.get(0).remove();
			elems = doc.select("#maincontent");
			elems.get(0).remove();
			elems = doc.select("#lotusFrame > div:nth-child(1) > div.lotusTitleBar2");
			elems.get(0).remove();
			
			/*
			elems = doc.select("body > div.lotusui30_layout.lotusFrame > div.lotusMain > div.lotusContent > div.lotusHeader.lconnSearchHeader");
			elems.get(0).remove();
			elems = doc.select("#lconnSearchMsgErrorNoScope");
			elems.get(0).remove();
			elems = doc.select("#lconnSearchMsgErrorEmptyQuery");
			elems.get(0).remove();
			*/
			String data = doc.toString();
			return this.extractAll(data);
			
		} catch (Exception e) {
			return null;
		}
	}
	
	private String[] extractLeftColumn(final String data) {
		// replace title
		String[] result1 = this.extractBetween(data, "<title>", "</title>", true, true);
		
		// remove search title bar
		//result1[1] = this.replaceBetween(result1[1], "<div class=\"lotusTitleBar2\">", "</div>\n \n \n<div class=\"lotusMain\">", "", false);
		
		// remove left column
		//result1[1] = this.replaceBetween(result1[1], "<div class=\"lotusColLeft\"", "<div class=\"lotusContent\"", "", false);
		
		// remove body
		result1[1] = this.replaceBetween(result1[1], "<table role=\"presentation\" class=\"lotusLeft\">", "</table>", "", false, false);
		result1[1] = this.replaceBetween(result1[1], "<div class=\"lotusHeader lconnSearchHeader\">", "</div></div>", "", false, false);
		
		// return
		return new String[]{result1[0], result1[1]};
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
		result2[1] = result2[1].substring(14);
		
		// return
		return new String[]{result1[0], result2[0], result2[1]};
	}
	
	
}
