Date: 2020-02-06

# summary

The `ceylon-impl` sample demonstrates an implementation of `ceylon-api` with application of the compatibility test fixture.

# structure

Three source sets are provided:

- `main` contains the implementation with compatibility test (see below)

# intention

This module is intended to be an API implementation.

The user is supposed install the module somewhere to be discovered by some service locator.

# notes

Notes in the source code are annotated as `#XXX` comments.

## Test Source Separation

Currently, we don't know how to separate white-box test sources from the main module.

We have no criticism towards module boundary separation: "open module" is nonsense.
However, because test source separation is Good, the build tool should provide for it.

In this particular case, we could make the compatibility test an integration black-box test,
by using the service locator to locate the implementation.
But this is Bad.
