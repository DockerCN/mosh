FROM custa/docker-sshd
MAINTAINER custa <custa@126.com>

ENV REFRESHED_AT 2015-12-23
ENV LANG en_US.UTF-8

RUN apt-get -y update && \
    apt-get -y install mosh && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists && \
    locale-gen en_US.UTF-8

EXPOSE 60001-60020/udp
