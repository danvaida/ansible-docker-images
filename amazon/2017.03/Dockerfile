FROM amazonlinux:2017.03

LABEL maintainer me@danvaida.com

RUN yum update -y \
    && yum install -y \
        ca-certificates \
        gcc-4.8.3-3.20.amzn1 \
        libffi-devel-3.0.13-16.5.amzn1 \
        openssl-1.0.1k-15.96.amzn1 \
        openssl-devel-1.0.1k-15.99.amzn1.x86_64 \
        python27-devel-2.7.12-2.120.amzn1 \
        python27-pip-6.1.1-1.23.amzn1 \
    && pip install --upgrade pip setuptools \
    && pip install ansible==2.3 \
    && yum clean -y all \
    && yum remove -y gcc
