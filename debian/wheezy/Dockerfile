FROM debian:wheezy

LABEL maintainer me@danvaida.com

RUN DEBIAN_FRONTEND=noninteractive \
    BACKPORTS='deb http://ftp.debian.org/debian wheezy-backports main' \
    && echo "$BACKPORTS" >> /etc/apt/sources.list \
    && apt-get update -y \
    && apt-get install -y \
        apt-transport-https=0.9.7.9+deb7u7 \
        ca-certificates \
        python-dev=2.7.3-4+deb7u1 \
        python-ndg-httpsclient=0.3.2-1~bpo70+1 \
        python-openssl=0.13-2+deb7u1 \
        python-pip=1.1-3 \
        python-pyasn1=0.1.3-1 \
        python-urllib3=1.3-3 \
        libffi-dev=3.0.10-3 \
    && pip install ansible==2.2 \
    && apt-get remove -f -y --purge --auto-remove build-essential \
    && apt-get clean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* /tmp/*
