#!/bin/sh

# -4 IPv4 only
# -L follow redirect if the server responds with a redirect

curl -4 -L https://builds.shipilev.net/openjdk-jdk17/openjdk-jdk17-linux-x86_64-server-release.tar.xz | tar -xvz
curl -4 -L https://repo.maven.apache.org/maven2/com/amazonaws/aws-lambda-java-runtime-interface-client/1.1.0/aws-lambda-java-runtime-interface-client-1.1.0.jar -o aws-lambda-java-runtime-interface-client-1.1.0.jar

chmod 755 bootstrap && zip -r java17layer.zip jdk bootstrap aws-lambda-java-runtime-interface-client-1.1.0.jar