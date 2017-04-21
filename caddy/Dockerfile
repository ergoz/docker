FROM alpine
MAINTAINER Ciel <me@ciel.xin>

RUN apk --update add bash curl
RUN curl -sSL https://getcaddy.com | bash -s net

ENV CADDY /var/caddy

WORKDIR $CADDY
RUN echo "0.0.0.0:80" > $CADDY/Caddyfile
RUN echo "Hello Caddy!" > $CADDY/index.html

EXPOSE 80
CMD ["caddy", "-agree=true"]
