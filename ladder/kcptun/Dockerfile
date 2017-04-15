FROM alpine:3.3

WORKDIR /kcptun

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

RUN curl -Lo kcptun.tar.gz https://github.com/xtaci/kcptun/releases/download/v20170329/kcptun-linux-amd64-20170329.tar.gz \
&& tar -zxvf kcptun.tar.gz
