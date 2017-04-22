FROM alpine

ENV FRP_VERSION 0.9.3
ENV FRP /var/frp

RUN apk --update add bash curl
RUN curl -sSL -o /tmp/frp.tar.gz https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz
RUN tar zxvf /tmp/frp.tar.gz -C /var && mv /var/frp_${FRP_VERSION}_linux_amd64 ${FRP} && rm /tmp/frp.tar.gz

WORKDIR $FRP
ADD run.sh $FRP

EXPOSE 7000
EXPOSE 7500

CMD ["bash", "run.sh"]
