FROM amazonlinux:2016.09

LABEL maintainer me@danvaida.com

RUN yum update -y \
    && yum install -y \
        ca-certificates \
        gcc-4.8.5-1.22.amzn1 \
        openssl-devel-1.0.2k-8.106.amzn1.x86_64 \
        python27-devel-2.7.12-2.121.amzn1 \
        python27-pip-9.0.1-1.24.amzn1 \
    && pip install --upgrade pip setuptools \
    && pip install paramiko==2.4.0 ansible==2.4.2 \
    && yum clean -y all \
    && yum remove -y gcc
