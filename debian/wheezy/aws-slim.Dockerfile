FROM danvaida/ansible-docker-images:debian-wheezy-slim

LABEL maintainer me@danvaida.com

RUN pip install \
        boto==2.48.0 \
        boto3==1.5.2 \
        botocore==1.8.16
