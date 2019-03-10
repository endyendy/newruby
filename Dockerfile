FROM ruby:latest
USER root

RUN yum install -y git
RUN git clone https://github.com/endyendy/imagemagickrpm.git
RUN yum localinstall -y ./imagemagickrpm/*.rpm

USER 1001
