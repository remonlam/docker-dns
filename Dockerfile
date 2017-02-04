FROM alpine:3.5
MAINTAINER Remon Lam [remon@containerstack.io]

RUN apk add --update dhcp && \
    rm -rf /var/cache/apk/*

COPY named.conf /etc/bind/named.conf

EXPOSE 53/udp 53/tcp
CMD named -g
