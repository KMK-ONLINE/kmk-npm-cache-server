FROM ubuntu:15.04
MAINTAINER Awan (addhe.warman@kmkonline.co.id)

RUN \
  sed -i "s/archive.ubuntu.com/kambing.ui.ac.id/g" /etc/apt/sources.list

RUN \
  apt-get update && apt-get -y install \
    npm \
    nodejs


ENV PATH $PATH:$HOME/.npm-packages/bin
ENV CACHE_DIR=/cache_npm

RUN npm config set prefix '~/.npm-packages'
RUN npm install -g forever npm-proxy-cache

RUN ln -s /usr/bin/nodejs /usr/bin/node

VOLUME ["${CACHE_DIR}"]

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]
