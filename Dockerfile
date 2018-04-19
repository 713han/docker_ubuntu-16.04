FROM ubuntu:xenial
MAINTAINER hanshuang@talk2yam.com

ARG DEBIAN_FRONTEND=noninteractive

RUN \
  apt-get update && apt-get install --assume-yes apt-utils && \
  apt-get install --assume-yes fail2ban


CMD ["run"]
