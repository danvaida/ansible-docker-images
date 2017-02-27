FROM debian:wheezy

LABEL maintainer me@danvaida.com

RUN apt-get -y update
RUN apt-get -y install python-pip=1.1-3 \
                       python-dev=2.7.3-4+deb7u1 \
                       libffi-dev=3.0.10-3

RUN pip install ansible==2.2
