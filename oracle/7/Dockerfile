FROM oraclelinux:7.3

LABEL maintainer me@danvaida.com

RUN yum update -y \
    && yum install -y wget-1.14-13.el7 \
    && wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && rpm -ivh epel-release-latest-7.noarch.rpm \
    && yum update -y \
    && yum install -y \
        ca-certificates \
        gcc-4.8.5-16.el7 \
        openssl-1.0.2k-8.0.1.el7 \
        openssl-devel-1.0.2k-8.0.1.el7 \
        python2-pip-8.1.2-5.el7 \
        python-devel-2.7.5-58.0.1.el7 \
        libffi-devel-3.0.13-18.el7 \
    && pip install --upgrade setuptools pip \
    && pip install ansible==2.2 \
    && rm epel-release-latest-7.noarch.rpm \
    && yum clean -y all \
    && yum remove -y gcc
