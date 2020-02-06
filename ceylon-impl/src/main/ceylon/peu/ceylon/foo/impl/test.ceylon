// #XXX: Ceylon 1.3.3 doesn't provide for white-box test source separation

import ceylon.test { ... }
import peu.ceylon.foo.api { ... }
import peu.ceylon.foo.impl { ... }
import peu.ceylon.foo.test { ... }

final class ImplCompatibilityTest() extends CompatibilityTest()
{
	shared actual Service create ()
	{
		return ServiceImpl();
	}
}
