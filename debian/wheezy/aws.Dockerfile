FROM danvaida/ansible-docker-images:debian-wheezy

LABEL maintainer me@danvaida.com

RUN pip install boto==2.42.0

ENV AWS_REGION
ENV AWS_ACCESS_KEY
ENV AWS_SECRET_KEY
