import ceylon.test { ... }
import peu.ceylon.service { ... }

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
