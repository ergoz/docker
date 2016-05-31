FROM alpine
MAINTAINER Ciel <me@ciel.im>

RUN apk --update add \
	python py-pip && pip install youtube-dl
ENTRYPOINT ["youtube-dl"]
