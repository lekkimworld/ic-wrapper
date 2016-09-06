package test.org.openntf.icw;

import static org.junit.Assert.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.openntf.icw.AbstractExtracter.MECHANISM;
import org.openntf.icw.Context;
import org.openntf.icw.Extracter_v55;

public class Extracter_v55_Test extends AbstractTest {

	@Test
	public void test() throws Exception {
		Context ctx = this.buildTestContext(TEST_VERSION.V55);
		ctx.setTokenValue("Dummy");
		Extracter_v55 e = new Extracter_v55(ctx);
		String[] result = e.extract(MECHANISM.PURE);
		assertNotNull(result);
		assertEquals(3, result.length);
		
		assertEquals(this.loadTestString("extract_v55_pure0.txt"), result[0]);
		assertEquals(this.loadTestString("extract_v55_pure1.txt"), result[1]);
		assertEquals(this.loadTestString("extract_v55_pure2.txt"), result[2]);
	}
	
	@Test
	public void testJsoup() throws Exception {
		Document doc = Jsoup.connect("https://inside.intravision.dk/search/web/jsp/advancedSearch.jsp").cookie("LtpaToken2", "FBFDNqrpqeVI/H+G4yWabZlfc+jyo1ID9stoersa/ldRWlwNQ3tGsEi3UW/Kjp5ZRltL+uW1IA9zIq27oPzUe6AG7Z9J/8YXBvuBQdK6J17wJ6JEbQNOENWf9uOC48FXP4I/DqRN4wDb/UqATGZM/1jrvacy+OFXuQ7Tq6d8YEmjp7AaMsv+pkEkh62NXGGIeaF2m7wW65pUJXdJDy7CHQVzhVmVjSfexCc/qo68RTI6JsAyMGONjcQsNXBRZQN/HGjDwsJWTfwlmAWSzOdTttVCNROnXxnSQaSpS+u0nAHxBxkDcXAq7Ie86Y+1CuycCMgRplUvoz4d38Im783X9yWRiEjia3riamXHKJ3Hez5P87g6ndawhvhywLYxeuiLruesIBoOBWp+KgzwUVx24w5p6TJbyzXXRTZEaw/S1IMAdU+l4VdCGLLTRxH7xVIcz3zNNSxW1gPs6T7CEaKju0B/YZ7TMWTRPc0nYJHYMRBTIDMWS6OeHjosUeTi8EktiqTCSO7l+nFXea8PIvAoTk4Zs6wcaI6aBx7gyMImX7m1SFUEbt6ca4CkUDXSGT+w/gYXO57CqQ7AJ1NGTj3DvZ/F0DdBrKAHw/Np3rzxn6mXUFhueehnBqgfv8TXp11N1R95ZNuH2Q4FBcRDU6zXT2WFXxiBDiIplVeuN1UIW6v+vpScA+qx2WsjJ9ni/i7e").get();
		Elements elems = doc.select("body > div.lotusui30_layout.lotusFrame > div.lotusMain > div.lotusContent > table");
		System.out.println(elems.get(0));
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
		System.out.println(doc);
	}

}
