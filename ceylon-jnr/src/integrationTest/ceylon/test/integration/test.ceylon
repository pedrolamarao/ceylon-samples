import ceylon.test { ... }
import jnr.ffi { LibraryLoader }
import peu.ceylon.jnr { ... }

shared test void smoke () 
{
    value library = LibraryLoader.create(`Library`).failImmediately().load("kernel32");
    assert(library exists);
}
