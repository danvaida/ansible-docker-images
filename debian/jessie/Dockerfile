FROM debian:jessie

LABEL maintainer me@danvaida.com

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update -y && \
    apt-get install --fix-missing && \
    apt-get install -y gcc='4:4.9.2-2' \
                       libffi-dev='3.1-2+b2' \
                       libssl-dev='1.0.1t-1+deb8u5' \
                       python=2.7.9-1 \
                       python-dev=2.7.9-1 \
                       python-pip=1.5.6-5 \
                       python-yaml=3.11-2

RUN apt-get remove -y --purge python-cffi

RUN pip install --upgrade cffi pip && \
    pip install ansible==2.2

RUN apt-get remove -f -y --auto-remove gcc \
                                       python-pip \
                                       python-dev \
                                       libffi-dev \
                                       libssl-dev
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*  /tmp/*

RUN ansible --version
