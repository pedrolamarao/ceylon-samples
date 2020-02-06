import ceylon.language { ... }

shared interface Option
{
}

shared final class Options
{
	static class NumberOption (Integer i) satisfies Option
	{
		Integer val = i;
	}
	
	shared static Option putNumber (Integer val)
	{
		return NumberOption(val);
	}
	
	shared static Integer? popNumber (Option* options)
	{
		return null;
	}
	
	static class NameOption (String s) satisfies Option
	{
		String val = s;
	}
	
	shared static Option putName (String val)
	{
		return NameOption(val);
	}
	
	shared static String? popName (Option* options)
	{
		return null;
	}

	new() {}
}

shared interface Editor
{
	shared formal void load (Anything x, Option* options);
	
	shared formal void save (Anything x, Option* options);
}

shared interface Transport
{
	shared formal void send (Anything x, Option* options);
}

shared interface Service
{
	shared formal Editor createEditor (Option* options);
	
	shared formal Transport createTransport (Option* options);
}
