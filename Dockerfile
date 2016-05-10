FROM centos:7

MAINTAINER Erik Jacobs "erikmjacobs@gmail.com"

ENV YCSB_VERSION 0.8.0

RUN yum -y install java

RUN curl -sLo /tmp/ycsb-${YCSB_VERSION}.tar.gz https://github.com/brianfrankcooper/YCSB/releases/download/${YCSB_VERSION}/ycsb-${YCSB_VERSION}.tar.gz \
  && tar -xvf /tmp/ycsb-${YCSB_VERSION}.tar.gz \
  && mv ycsb-${YCSB_VERSION} ycsb \
  && rm -rf /tmp/ycsb-${YCSB_VERSION}.tar.gz 
