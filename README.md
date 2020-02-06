Date: 2020-02-06

# summary

This project contains sample Ceylon components.

These samples are my own typical, most basic use cases for jvm components.

# current

These are the components currently demonstrated:

- `ceylon-tui` demonstrates a "text" component for the "text" shell with localized messages
- `ceylon-service` demonstrates a component discoverable by `ServiceLoader`
- `ceylon-api` demonstrates a pure interface component with compatibility test fixture
- `ceylon-impl` demonstrates an implementation for `ceylon-api` with compatibility test

# expected

- `ceylon-service-user` demonstrates a component dependent on `ceylon-service` with mock testing
- `ceylon-osgi` demonstrates a component discoverable by OSGi Declarative Services
- `ceylon-osgi-user` demonstrates a component dependent on `ceylon-osgi` with mock testing

# notes

Ceylon build tools seem really OK.

However, Gradle dominates all my projects for native and jvm.

I intend to research the integration of Ceylon components into Gradle multi-project and composite builds later.
