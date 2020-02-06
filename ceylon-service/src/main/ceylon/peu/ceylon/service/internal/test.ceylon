// #XXX: Ceylon 1.3.3 doesn't provide for white-box test source separation

import ceylon.test { ... }
import peu.ceylon.service { ... }

shared test void serviceSmoke () 
{
	ServiceImpl service = ServiceImpl();
	
	Editor editor = service.createEditor();
	editor.load(null);
	editor.save(null);
	
	Transport transport = service.createTransport();
	transport.send(null);
}

shared test void editorSmoke ()
{
	EditorImpl editor = EditorImpl();
	editor.load(null);
	editor.save(null);
}

shared test void transportSmoke ()
{
	TransportImpl transport = TransportImpl();
	transport.send(null);
}
