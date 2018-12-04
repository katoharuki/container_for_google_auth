FROM ubuntu:trusty
MAINTAINER Kato Haruki
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update 
RUN apt-get -y upgrade
ENV TZ Asia/Tokyo
RUN apt-get -y install sudo vim tar less oathtool
