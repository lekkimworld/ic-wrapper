package test.org.openntf.icw;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.openntf.icw.AbstractExtracter.MECHANISM;
import org.openntf.icw.Context;
import org.openntf.icw.Extracter_v50;

public class Extracter_v50_Test extends AbstractTest {

	@Test
	public void test() throws Exception {
		Context ctx = this.buildTestContext(TEST_VERSION.V50);
		ctx.setTokenValue("Dummy");
		Extracter_v50 e = new Extracter_v50(ctx);
		String[] result = e.extract(MECHANISM.PURE);
		assertNotNull(result);
		assertEquals(3, result.length);
		
		assertEquals(this.loadTestString("extract_v50_pure0.txt"), result[0]);
		assertEquals(this.loadTestString("extract_v50_pure1.txt"), result[1]);
		assertEquals(this.loadTestString("extract_v50_pure2.txt"), result[2]);
	}

}
