FROM node:boron-alpine
MAINTAINER Ciel <me@ciel.xin>

ENV GHOST_VERSION 0.11.7
ENV GHOST /var/ghost
ENV NODE_ENV production

RUN apk --update add alpine-sdk
RUN curl -sSL -o /tmp/ghost.zip https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip

WORKDIR $GHOST
RUN unzip /tmp/ghost.zip && rm /tmp/ghost.zip
RUN npm i --production

EXPOSE 2368

ENTRYPOINT node index.js
