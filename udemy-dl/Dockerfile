FROM alpine
MAINTAINER Ciel <me@ciel.im>

RUN apk --update add \
	bash aria2 python py-pip && pip install udemy-dl
VOLUME /data

ENTRYPOINT ["udemy-dl"]
CMD ["-o", "/data"]
