Date: 2020-02-06

# summary

The `ceylon-jnr` sample demonstrates using JNR do adapt native library.

This implies bringing `jnr-ffi` in from from somewhere and setting it up correctly.

# structure

Three source sets are provided:

- `main` contains the desired bindings

# intention

This module is intended to be used like a normal module.

The magic is bringing in JNR from somewhere and defining the appropriate bindings.

# notes

Currently, this simply doesn't work.

Things I tried in Ceylon IDE.

- `import maven:com.github.jnr:"jnr-ffi" "2.1.11"` failed with an error message.
- adding `jnr-ffi-2.1.11.jar` to the Java Build Path had no effect I could observe.
- pulling in the source from Github and adding an IDE "project reference" had no effect I could observe.
- using Gradle with `id 'com.athaydes.ceylon' version '1.3.1'` led to a compiler crash.
