#
#
#

FROM arm32v7/debian:buster

LABEL maintainer="Nick Gregory <docker@openenterprise.co.uk>"

RUN apt-get -y update \
    && apt-get -y dist-upgrade \
    && apt-get -y install curl build-essential cmake sudo

STOPSIGNAL SIGTERM
