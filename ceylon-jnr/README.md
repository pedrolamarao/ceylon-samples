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

## Maven Central bug

Ceylon 1.3.3 refers to Maven Central via `http`, which was recently discontinued.

Therefore, `maven:` style imports do not work out of the box.

To work around this bug, it is necessary to override the location for Maven Central in `$HOME/.m2/settings.xml` like this:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">
     <profiles>
        <profile>
            <id>central</id>
            <repositories>
                <repository>
                    <releases>
                        <enabled>true</enabled>
                    </releases>
                    <snapshots>
                        <enabled>false</enabled>
                    </snapshots>
                    <id>Maven Central</id>
                    <name>Maven Central</name>
                    <url>https://repo1.maven.org/maven2/</url>
                </repository>
            </repositories>
            <pluginRepositories>
                <pluginRepository>
                    <releases>
                        <enabled>true</enabled>
                    </releases>
                    <snapshots>
                        <enabled>true</enabled>
                    </snapshots>
                    <id>central</id>
                    <url>http://repo1.maven.org/maven2</url>
                </pluginRepository>
            </pluginRepositories>
        </profile>
    </profiles>
    <activeProfiles>
        <activeProfile>central</activeProfile>
    </activeProfiles>
</settings>
```
