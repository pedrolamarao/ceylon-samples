Date: 2020-02-06

# summary

The `ceylon-tui` sample demonstrates a technique for "texts" components suitable for Unix like shell pipes.

# intention

This module is intended to interact with a human user via a "text" shell.

The user may discover usage by running the program without parameters, or with the familiar parameter `-h`.

Localization of help and other texts is required.

Also, it is intended to fit in a Unix like shell pipe.

By default, it consumes from standard input and produces to standard output.

# structure

Three source sets are provided:

- `main` contains the interface, the implementation and white-box tests (see below);
- `test` contains black-box pure tests
- `integrationTest` contains black-box integration tests

# notes

Notes in the source code are annotated as `#XXX` comments.

## Test Source Separation

Currently, we don't know how to separate white-box test sources from the main module.

We have no criticism towards module boundary separation: "open module" is nonsense.

However, because test source separation is Good, the build tool should provide for it.
