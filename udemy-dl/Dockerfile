FROM alpine
MAINTAINER Ciel <me@ciel.im>

RUN apk --update add \
	aria2 python py-pip && pip install udemy-dl
ENTRYPOINT ["udemy-dl"]
