Date: 2020-02-06

# summary

The `ceylon-service` sample demonstrates a technique for service encapsulation with `ServiceLoader` discovery.

In this sample, interface and implementation are provided by the same module, for ease of demonstration.

# structure

Three source sets are provided:

- `main` contains the interface, the implementation and white-box tests (see below);
- `test` contains black-box pure tests
- `integrationTest` contains black-box integration tests

# intention

This module is intended to be used together with `ServiceLoader`.

The user is supposed to use it to discover the implementation of `Service`.

From this point on, the user can create particular service implementations as required.

# notes

Notes in the source code are annotated as `#XXX` comments.

## `ServiceLoader`

Currently, we cannot convince `ServiceLoader` to find our implementation.

Apparently, the build tool fails to include `META-INF/services/peu.ceylon.service.Service` inside the module.

We have tried both `--resource` and `--resource-root` to no avail.

## Test Source Separation

Currently, we don't know how to separate white-box test sources from the main module.

We have no criticism towards module boundary separation: "open module" is nonsense.

However, because test source separation is Good, the build tool should provide for it.
