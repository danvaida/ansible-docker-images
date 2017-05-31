FROM danvaida/ansible-docker-images:debian-wheezy

LABEL maintainer me@danvaida.com

RUN pip install \
        boto==2.42.0 \
        boto3==1.4.4 \
        botocore==1.5.1
