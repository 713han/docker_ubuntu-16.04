FROM ubuntu:xenial

MAINTAINER hanshuang@talk2yam.com

ARG DEBIAN_FRONTEND=noninteractive

RUN \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get install -y apt-utils && \
  apt-get install -y fail2ban

CMD ["run"]
