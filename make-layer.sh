#!/bin/sh

# -4 IPv4 only
# -L follow redirect if the server responds with a redirect

curl -4 -L https://download.java.net/java/GA/jdk17/0d483333a00540d886896bac774ff48b/35/GPL/openjdk-17_linux-x64_bin.tar.gz | tar -xvz
curl -4 -L https://repo.maven.apache.org/maven2/com/amazonaws/aws-lambda-java-runtime-interface-client/1.1.0/aws-lambda-java-runtime-interface-client-1.1.0.jar -o aws-lambda-java-runtime-interface-client-1.1.0.jar


chmod 755 bootstrap && zip -r java17layer.zip jdk-17 bootstrap aws-lambda-java-runtime-interface-client-1.1.0.jar