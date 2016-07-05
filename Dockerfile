FROM debian:jessie

ENV HTTP_PROXY=http://proxy-chain.intel.com:911
ENV HTTPS_PROXY=http://proxy-chain.intel.com:911

WORKDIR /zeppelin

RUN apt-get update \
    && apt-get install -y \
           wget \
           open-jdk7 \
	   tar \
    && wget https://dist.apache.org/repos/dist/release/zeppelin/zeppelin-0.6.0/zeppelin-0.6.0-bin-all.tgz \
    && tar -xvf zeppelin-0.6.0-bin-all.tgz

