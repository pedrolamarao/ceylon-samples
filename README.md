Date: 2020-02-06

# summary

This project contains sample Ceylon components.

These samples are my own typical, most basic use cases for jvm components.

# current

These are the components currently demonstrated:

- `ceylon-tui` demonstrates a "text" component for the "text" shell
- `ceylon-service` demonstrates a component discoverable by `ServiceLoader`

# expected

- `ceylon-service-user` demonstrates a component dependent on `ceylon-service` with mock testing
- `ceylon-osgi` demonstrates a component discoverable by OSGi Declarative Services
- `ceylon-osgi-user` demonstrates a component dependent on `ceylon-osgi` with mock testing
- `ceylon-api` demonstrates an pure interface component
- `ceylon-api-test-kit` demonstrates a test kit for `ceylon-api`
- `ceylon-api-impl` demonstrates an implemetation for `ceylon-api` with test implementation of `ceylon-api-test-kit`

# notes

Ceylon build tools seem really OK.

However, Gradle dominates all my projects for native and jvm.

I intend to research the integration of Ceylon components into Gradle multi-project and composite builds later.
 