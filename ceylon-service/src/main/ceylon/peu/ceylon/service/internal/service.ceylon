import peu.ceylon.service { ... }

class EditorImpl() satisfies Editor
{	
	shared actual void load (Anything x, Option* options)
	{
		// configurable as below
	}
	
	shared actual void save (Anything x, Option* options)
	{
		// configurable as below
	}
}

class TransportImpl() satisfies Transport
{	
	shared actual void send (Anything x, Option* options)
	{
		// configurable as below
	}
}

shared class ServiceImpl() satisfies Service
{		
	shared actual Editor createEditor (Option* options)
	{
		value editor = EditorImpl();

		if (exists name = Options.popName(*options)) {
			// configure editor with option
		}
			
		return editor;
	}
	
	shared actual Transport createTransport (Option* options)
	{
		value transport = TransportImpl();

		if (exists number = Options.popNumber(*options)) {
			// configure transport with option
		}
		
		return transport;
	}
}
