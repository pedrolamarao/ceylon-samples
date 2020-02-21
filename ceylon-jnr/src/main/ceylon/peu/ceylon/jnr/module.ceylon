native("jvm")
module peu.ceylon.jnr "1.0.0" 
{
	// #XXX: Ceylon 1.3.3 fails contacting Maven Central via `http`
	shared import maven:"com.github.jnr:jnr-ffi" "2.1.11";
	
	// #XXX: Ceylon 1.3.3 doesn't import maven dependencies transitively
	import maven:"com.github.jnr:jffi" "1.2.22";
	import maven:"com.github.jnr:jffi:native" "1.2.22";
	import maven:"com.github.jnr:jnr-a64asm" "1.0.0";
	import maven:"com.github.jnr:jnr-x86asm" "1.0.2";
	import maven:"org.ow2.asm:asm" "7.1";
	import maven:"org.ow2.asm:asm-commons" "7.1";
	import maven:"org.ow2.asm:asm-analysis" "7.1";
	import maven:"org.ow2.asm:asm-tree" "7.1";
	import maven:"org.ow2.asm:asm-util" "7.1";
	// #XXX: Ceylon 1.3.3 fails with "cannot find module artifact ..."
	// import maven:"org.apache.logging.log4j:log4j-api" "2.13.0";
}
