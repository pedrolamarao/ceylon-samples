import ceylon.language {
	...
}

import java.io {
	InputStream,
	OutputStream,
	FileInputStream,
	FileOutputStream
}

import java.lang {
	System,
	ByteArray
}

shared void run () 
{
	// #XXX: Ceylon IDE 1.3.3 is annoyed that we ignore this return value
	process.exit(main(process.arguments, System.\iin, System.\iout));
}

Integer main (String[] arguments, InputStream stdin, OutputStream stdout) 
{
	if (arguments.size < 1) {
		help();
		return 0;
	}
	
	variable String? action = null;
	variable Boolean helpArg = false;
	variable String? inArg = null;
	variable String? outArg = null;
	
	// #XXX: Ceylon `for` iterator is immutable
	variable Integer i = 0;
	while (i < arguments.size) 
	{
		value argument = arguments[i++];		
		if (! exists argument) { continue; }
		switch (argument)
		case ("-a" | "--action") {
			if (++i == arguments.size) { fail("'action' requires an argument"); return 1; }
			action = arguments[i];
		}
		case ("-h") { 
			helpArg = true;
		}
		case ("-i" | "--input") {
			if (++i == arguments.size) { fail("'in' requires an argument"); return 1; }
			inArg = arguments[i];
		}
		case ("-o" | "--output") {
			if (++i == arguments.size) { fail("'out' requires an argument"); return 1; }
			outArg = arguments[i];
		}
		// #XXX: Ceylon requires us to care about "default"
		else { }
	}
	
	if (helpArg) {
		help();
		return 0;
	}
	
	if (! action exists) {
		fail("'action' is required");
		return 1;
	}
	
	value in_ = (inArg exists) then FileInputStream(inArg) else stdin;	
	value out_ = (outArg exists) then FileOutputStream(outArg) else stdout;
	
	value status = switch (action)
		case ("foo") foo(arguments, in_, out_)
		case ("bar") bar(arguments, in_, out_)
		else 1;
	
	in_.close();
	out_.close();
	
	return status;	
}

Integer foo (String[] arguments, InputStream in_, OutputStream out_)
{
	value buffer = ByteArray(4096);
	
	while (true) {
		value n = in_.read(buffer);
		if (n < 1) { break; }
		out_.write(buffer, 0, n);
	}
	
	out_.flush();
	
	return 0;
}

Integer bar (String[] arguments, InputStream in_, OutputStream out_)
{	
	variable String? keyArg = null;		

	// #XXX: Ceylon `for` iterator is immutable
	variable Integer i = 0;
	while (i < arguments.size) 
	{
		value argument = arguments[i++];		
		if (! exists argument) { continue; }
		switch (argument)
		case ("-K" | "--key") {
			if (++i == arguments.size) { fail("'key' requires an argument"); return 1; }
			keyArg = arguments[i];
		}
		// #XXX: Ceylon requires us to care about "default"
		else { }
	}
		
	// #XXX: Ceylon doesn't like variables
	value keyArgValue = keyArg;
	
	if (! exists keyArgValue) {
		fail("'xor' is required");
		return 1;
	}
	
	// #XXX: Ceylon doesn't know how to parse Byte
	value key = Integer.parse(keyArgValue);
	if (is ParseException key) {
		fail("'key' must be a number"); 
		return 1; 
	}
				
	value buffer = ByteArray(4096);
	
	while (true) {
		value n = in_.read(buffer);
		if (n < 1) { break; }
		for (j in 0:n) { buffer[j] = buffer[j].xor(key.byte); } // XXX: ...what?
		out_.write(buffer, 0, n);
	}

	return 0;
}

void fail (String cause)
{
	print(_T("error: %s", cause));
}

void help () 
{
	print(_T("__help"));
}

String _T (String message, String* arguments)
{
	import java.lang { Strong = String }
	import java.util { ResourceBundle }
	
	value bundle = ResourceBundle.getBundle("peu.ceylon.tui.Messages");
	
	// XXX: Ceylon 1.3.3 has no "printf" like thing I could find
	try { 
		return Strong.format(bundle.getString(message), arguments); 
	} catch (e) { 
		return Strong.format(message, arguments); 
	}
}
