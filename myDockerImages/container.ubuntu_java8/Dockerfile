FROM ubuntu:18.04

LABEL MAINTAINER Andre Marcos

# Install OpenJDK-8
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk

# certificate
RUN apt-get update && \
    apt-get install ca-certificates-java && \
    update-ca-certificates -f;

# Setup JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME