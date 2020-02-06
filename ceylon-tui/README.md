Date: 2020-02-06

# summary

The `ceylon-tui` sample demonstrates a technique for "texts" components suitable for Unix like shell pipes.

# structure

Three source sets are provided:

- `main` contains the interface, the implementation and white-box tests (see below);
- `test` contains black-box pure tests
- `integrationTest` contains black-box integration tests

# intention

This module is intended to be used via text shells.

The user may discover usage by running the program without parameters, or with the familiar parameter `-h`.

# notes

Notes in the source code are annotated as `#XXX` comments.

