FROM alpine
MAINTAINER Ciel <me@ciel.im>

RUN apk --update add \
	openssh-client curl wget perl python py-pip git bash zsh vim jq && \
	pip install --upgrade pip
RUN curl -sSL dot.ciel.im | bash

CMD ["zsh"]
