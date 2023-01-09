# syntax=docker/dockerfile:1
#FROM debian:10-slim
FROM python:3.11.1-slim-buster

WORKDIR /swc

RUN apt-get update

RUN apt-get install -y tcpdump

RUN apt-get update \
&& apt-get install -y \
libglib2.0-0 liblzo2-2 libltdl7 libpcap0.8 zlib1g

RUN apt-get install -y wget

RUN apt-get intall -y python3

RUN wget https://onstatic.s3.amazonaws.com/ona/master/ona-service_RaspbianJessie_armhf.deb

RUN dpkg -i ona-service_RaspbianJessie_armhf.deb

RUN wget https://github.com/bbayles/netsa-pkg/releases/download/v0.1.18/netsa-pkg_raspbian.deb

RUN dpkg -i netsa-pkg_raspbian.deb

