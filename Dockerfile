FROM ubuntu:14.10
MAINTAINER Reto Gmür "reto@apache.org"

RUN apt-get update && apt-get install -y wget openjdk-7-jdk # librxtx-java
RUN wget http://rxtx.qbang.org/pub/rxtx/rxtx-2.1-7-bins-r2.zip; \
    jar xf rxtx-2.1-7-bins-r2.zip; mkdir /usr/lib/jni/; \
    cp rxtx-2.1-7-bins-r2/Linux/x86_64-unknown-linux-gnu/*.so /usr/lib/jni/ 
ENV LD_LIBRARY_PATH  /usr/lib/jni/
