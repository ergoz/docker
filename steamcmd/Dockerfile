FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl lib32gcc1
RUN mkdir ~/Steam && cd ~/Steam && curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
