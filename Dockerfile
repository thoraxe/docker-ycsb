FROM webdizz/baseimage-java8:8u60

MAINTAINER Izzet Mustafaiev "izzet@mustafaiev.com"

ENV DEBIAN_FRONTEND noninteractive
ENV YCSB_VERSION 0.3.0

RUN curl --progress-bar -sLo /tmp/ycsb-${YCSB_VERSION}.tar.gz  https://github.com/brianfrankcooper/YCSB/releases/download/${YCSB_VERSION}/ycsb-${YCSB_VERSION}.tar.gz \
  && cd /opt \
  && tar -xvf /tmp/ycsb-${YCSB_VERSION}.tar.gz \
  && mv ycsb-${YCSB_VERSION} /opt/ycsb \
  && rm -rf /tmp/ycsb-${YCSB_VERSION}.tar.gz \
  && ln -s /opt/ycsb/bin/ycsb /usr/local/bin/ycsb \
  && add-apt-repository ppa:fkrull/deadsnakes \
  && apt-get update \
  && apt-get install -y python2.7 \
  && apt-get clean \
  && ln -s /usr/bin/python2.7 /usr/bin/python
