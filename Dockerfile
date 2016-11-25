FROM ubuntu:15.04
MAINTAINER Headout <tech@headout.com>

# Setup python and java and base system
ENV DEBIAN_FRONTEND noninteractive
ENV LANG=en_US.UTF-8

RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -q -y openjdk-8-jdk python3-pip libsnappy-dev language-pack-en supervisor

RUN pip3 install --upgrade pip requests

RUN apt-get install nodejs && \
  apt-get install npm

RUN npm install less

ADD supervisord.conf /etc/supervisor/supervisord.conf


