FROM alpine:3.3

WORKDIR /kcptun

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

RUN curl -Lo kcptun.tar.gz https://github.com/xtaci/kcptun/releases/download/v20190109/kcptun-linux-amd64-20190109.tar.gz \
&& tar -zxvf kcptun.tar.gz \
&& rm -f kcptun.tar.gz client_linux_amd64
