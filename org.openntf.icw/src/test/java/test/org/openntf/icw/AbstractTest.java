package test.org.openntf.icw;

import org.apache.commons.lang3.StringUtils;
import org.openntf.icw.Context;
import org.openntf.icw.URL;

public abstract class AbstractTest {
	public enum TEST_VERSION {
		V55, V50
	}
	protected Context buildTestContext(TEST_VERSION version) {
		Context ctx = new Context();
		ctx.setURLFactory(new Context.IURLFactory() {
			@Override
			public URL getURL(Context ctx) {
				return new URL(ctx) {
					@Override
					public CharSequence GET(String endpoint, boolean auth) throws Exception {
						String strurl = StringUtils.replaceChars(endpoint, '/', '_');
						strurl = StringUtils.replace(strurl, ".jsp", ".txt");
						return loadTestString(strurl);
					}
				};
			}
		});
		ctx.setHostname("cnx" + (version == TEST_VERSION.V50 ? "50" : "55")  + ".example.com");
		return ctx;
	}
	
	protected String loadTestString(String file) throws Exception {
		java.net.URL url = AbstractTest.class.getResource("../../../../" + file);
		java.nio.file.Path resPath = java.nio.file.Paths.get(url.toURI());
        String str = new String(java.nio.file.Files.readAllBytes(resPath), "UTF8"); 
		return str;
	}
}
