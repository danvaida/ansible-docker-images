FROM debian:stretch

LABEL maintainer me@danvaida.com

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update -y \
    && apt-get install --no-install-recommends -y \
        apt-transport-https=1.4.8 \
        ca-certificates \
        gnupg=2.1.18-8~deb9u1 \
        libssl-dev='1.1.0f-3+deb9u2' \
        python-dev=2.7.13-2 \
        python-setuptools=33.1.1-1 \
        python-wheel=0.29.0-2 \
        python-pip=9.0.1-2 \
        build-essential=12.3 \
    && pip install --upgrade pip cffi \
    && pip install ansible==2.4.2 \
    && apt-get remove -f -y --purge --auto-remove build-essential \
    && apt-get clean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* /tmp/* /root/.cache
