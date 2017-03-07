FROM debian:wheezy

LABEL maintainer me@danvaida.com

RUN echo "deb http://ftp.debian.org/debian wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install ca-certificates \
                       python-dev=2.7.3-4+deb7u1 \
                       python-ndg-httpsclient=0.3.2-1~bpo70+1 \
                       python-openssl=0.13-2+deb7u1 \
                       python-pip=1.1-3 \
                       python-pyasn1=0.1.3-1 \
                       python-urllib3=1.3-3 \
                       libffi-dev=3.0.10-3

RUN pip install ansible==2.2
