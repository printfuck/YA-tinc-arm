FROM alpine:3.12.0

RUN set -xe && apk add -U tinc && rm -rf /var/cache/apk/*

EXPOSE 655/tcp 655/udp
VOLUME /etc/tinc

ENTRYPOINT ["tincd"]
CMD ["--no-detach"]
