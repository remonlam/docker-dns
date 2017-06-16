FROM containerstack/alpine:3.6.1
MAINTAINER Remon Lam [remon@containerstack.io]

RUN apk add --update bind && \
    rm -rf /var/cache/apk/* && \
    rm -rf /etc/dnsmasq.conf

COPY dnsmasq.conf /etc/dnsmasq.conf

EXPOSE 53/udp 53/tcp
CMD named -g
