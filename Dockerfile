FROM ubuntu:20.04 as base-devel

MAINTAINER EKB <blaufuss@gmail.com>

WORKDIR /root
#Install needed stuff

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  git \
  && apt-get clean
RUN git clone https://github.com/blaufuss/test_project.git /root/test_project

RUN cp /root/test_project/README_MAGIC /root/
