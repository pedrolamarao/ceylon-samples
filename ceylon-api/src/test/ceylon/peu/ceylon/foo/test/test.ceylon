import ceylon.test { ... }
import peu.ceylon.foo.api { ... }

shared abstract class CompatibilityTest ()
{	
	shared formal Service create ();
	
	shared test void smoke () 
	{
		Service service = create();
		
		Editor editor = service.createEditor();
		editor.load(null);
		editor.save(null);
		
		Transport transport = service.createTransport();
		transport.send(null);
	}

	shared test void options ()
	{
		assert(Options.popNumber(Options.putNumber(1)) exists);
		assert(Options.popName(Options.putName("foo")) exists);
		
		assert(Options.popNumber(Options.putName("foo"), Options.putNumber(1)) exists);
		assert(Options.popName(Options.putName("foo"), Options.putNumber(1)) exists);
		
		assert(! Options.popNumber() exists);
		assert(! Options.popName() exists);
		
		assert(! Options.popNumber(Options.putName("foo")) exists);
		assert(! Options.popName(Options.putNumber(1)) exists);
	}
}
