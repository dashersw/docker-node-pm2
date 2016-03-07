FROM mhart/alpine-node:5.7.1

MAINTAINER Armagan Amcalar "armagan@amcalar.com"

RUN apk add --update bash git && rm -rf /var/cache/apk/* && npm install -g pm2@latest
