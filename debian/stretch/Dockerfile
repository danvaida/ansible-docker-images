FROM debian:stretch

LABEL maintainer me@danvaida.com

RUN apt-get update
RUN apt-get install -y apt-transport-https \
                       ca-certificates \
                       gnupg \
                       python-pip

RUN pip install ansible==2.2
