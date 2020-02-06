native("jvm")
module peu.ceylon.foo.impl "1.0.0" 
{
	// #XXX: Ceylon 1.3.3 doesn't provide for white-box test source separation
	import ceylon.test "1.3.3";
	shared import peu.ceylon.foo.api "1.0.0";
	import peu.ceylon.foo.test "1.0.0";
}
