FROM centos:7

LABEL maintainer me@danvaida.com

RUN (cd /lib/systemd/system/sysinit.target.wants/; \
        for i in *; do \
            [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; \
        done); \
    rm -f /lib/systemd/system/multi-user.target.wants/*; \
    rm -f /etc/systemd/system/*.wants/*; \
    rm -f /lib/systemd/system/local-fs.target.wants/*; \
    rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
    rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
    rm -f /lib/systemd/system/basic.target.wants/*; \
    rm -f /lib/systemd/system/anaconda.target.wants/*;

RUN yum update -y \
    && yum install -y epel-release \
    && yum install -y \
        ca-certificates \
        gcc-4.8.5-16.el7 \
        openssl-1.0.2k-8.el7 \
        openssl-devel-1.0.2k-8.el7 \
        python2-pip-8.1.2-5.el7 \
        python-devel-2.7.5-58.el7 \
        libffi-devel-3.0.13-18.el7 \
    && pip install --upgrade setuptools pip \
    && pip install ansible==2.3 \
    && yum clean -y all \
    && yum remove -y gcc
