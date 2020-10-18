FROM arm32v7/alpine:3.7

RUN set -xe && apk add -U tinc && rm -rf /var/cache/apk/*

EXPOSE 655/tcp 655/udp
VOLUME /etc/tinc

ENTRYPOINT ["tincd"]
CMD ["--no-detach"]
