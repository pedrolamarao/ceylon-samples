import ceylon.test { ... }
import java.util { ... }
import peu.ceylon.service { ... }

shared test void serviceLoader ()
{
	// #XXX: is this correct?
	ServiceLoader.load(`Service`).iterator().next();
}
