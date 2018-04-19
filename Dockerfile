FROM ubuntu:xenial

MAINTAINER hanshuang@talk2yam.com

ARG DEBIAN_FRONTEND=noninteractive

RUN \
  apt-get -y update && \
  apt-get -y upgrade && \
  locale-gen en_US.utf8 && \
  apt-get install -y apt-utils && \
  apt-get install -y fail2ban

ENV \
  SUPERVISORD_EXIT_ON_FATAL=1 \
  LC_ALL=en_US.utf8 \
  LANG=en_US.utf8 \
  LANGUAGE=en_US.utf8 

CMD ["run"]
