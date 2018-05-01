FROM amazonlinux:2017.03

LABEL maintainer me@danvaida.com

RUN yum install -y \
     ca-certificates \
     gcc-4.8.5-1.22.amzn1 \
     libffi-devel-3.0.13-16.5.amzn1 \
     openssl-devel-1.0.2k-8.106.amzn1.x86_64 \
     python27-devel-2.7.12-2.122.amzn1.x86_64 \
     python27-pip-9.0.1-1.24.amzn1 \
     redhat-lsb-core.x86_64 0:4.0-7.14.amzn1 \
    && pip install --upgrade pip setuptools \
    && pip install ansible==2.4.2 \
    && yum autoremove -y \
    && yum clean -y all \
    && yum remove -y gcc
