#
#
#

FROM arm32v7/debian:buster

LABEL maintainer="Nick Gregory <docker@openenterprise.co.uk>"

ADD libnginx-mod-http-modsecurity /src

RUN apt-get -y update \
    && apt-get -y dist-upgrade \
    && apt-get -y install curl build-essential cmake sudo wget git-core

RUN apt-get -y install autoconf automake apache2-dev libpcre3-dev libxml2-dev \
               pkg-config libyajl-dev zlib1g-dev libcurl4-openssl-dev libgeoip-dev \
               liblmdb-dev libpcre++-dev libssl-dev quilt

RUN cd /src \
    && make

STOPSIGNAL SIGTERM
