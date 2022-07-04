FROM alpine:latest
LABEL maintainer="Tarun Jangra<tarun.jangra@hotmail.com>"

RUN apk update && apk upgrade --available && sync

COPY release-cli-linux-amd64 /usr/bin/release-cli-linux-amd64
COPY release-cli-linux-arm64 /usr/bin/release-cli-linux-arm64

RUN chmod +x /usr/bin/release-cli-linux-amd64 /usr/bin/release-cli-linux-arm64

RUN rm -rf /var/cache/apk/*
