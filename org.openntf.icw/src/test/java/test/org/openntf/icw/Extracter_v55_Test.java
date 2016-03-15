package test.org.openntf.icw;

import static org.junit.Assert.*;

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

}
