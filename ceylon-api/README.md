Date: 2020-02-06

# summary

The `ceylon-api` sample demonstrates a pure interface module with compatibility test fixture.

# structure

Three source sets are provided:

- `main` contains the interface
- `test` contains a compatibility test fixture

# intention

This module is intended to be implemented by concrete services.

The user is supposed provide an implementation for `Service`.

Additionally, the user is supposed to apply the test fixture to assure compatibility.

# notes

Notes in the source code are annotated as `#XXX` comments.
