import ceylon.test { ... }
import java.util { ... }
import peu.ceylon.service { ... }

shared test void serviceLoader ()
{
	ServiceLoader.load(`Service`).iterator().next();
}
