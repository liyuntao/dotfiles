FROM alpine:3.3

WORKDIR /shadowsocks

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

RUN curl -LO https://github.com/shadowsocks/shadowsocks-go/releases/download/1.2.1/shadowsocks-server.tar.gz \
&& tar -zxvf shadowsocks-server.tar.gz \
&& rm -f shadowsocks-server.tar.gz

COPY ss-config.json /shadowsocks/ss-config.json

CMD ["./shadowsocks-server", "-c", "/shadowsocks/ss-config.json", "start"]
