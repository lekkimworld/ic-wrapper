package test.org.openntf.icw;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.openntf.icw.AbstractExtracter;
import org.openntf.icw.Context;
import org.openntf.icw.Extracter_v50;
import org.openntf.icw.Extracter_v55;

public class AbstractExtractorTest extends AbstractTest {
	@Test
	public void testBuildV55() throws Exception {
		Context ctx = this.buildTestContext(TEST_VERSION.V55);
		ctx.setTokenValue("Dummy");
		
		AbstractExtracter e = AbstractExtracter.getExtractor(ctx);
		assertEquals("Release v5.5.0.0 build IC5.5_Integration_20151204-1501", ctx.getReleaseString());
		assertTrue(e instanceof Extracter_v55);
	}
	
	@Test
	public void testBuildV50() throws Exception {
		Context ctx = this.buildTestContext(TEST_VERSION.V50);
		ctx.setTokenValue("Dummy");
		
		AbstractExtracter e = AbstractExtracter.getExtractor(ctx);
		assertEquals("Release v5.0.0.0 build IC5.0_CR_Profiles_20141013-1531", ctx.getReleaseString());
		assertTrue(e instanceof Extracter_v50);
	}

}
