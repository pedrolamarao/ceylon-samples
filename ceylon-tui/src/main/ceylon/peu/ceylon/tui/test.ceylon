// #XXX: Ceylon 1.3.3 doesn't provide for white-box test source separation

import ceylon.test { ... } 
import java.io { ... }
import java.lang { ByteArray }

shared test void help__default () 
{
	value in_ = ByteArrayInputStream(ByteArray(0));
	value out_ = ByteArrayOutputStream();
	
	main([], in_, out_);
	
	// TODO: verify out_
}

shared test void help__parameter () 
{
	value in_ = ByteArrayInputStream(ByteArray(0));
	value out_ = ByteArrayOutputStream();
	
	main([ "-h" ], in_, out_);

	// TODO: verify out_
	
	in_.reset();
	out_.reset();
	
	main([ "--help" ], in_, out_);

	// TODO: verify out_
}
