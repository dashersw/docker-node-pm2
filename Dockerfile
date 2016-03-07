FROM mhart/alpine-node:5.7.1

MAINTAINER Armagan Amcalar "armagan@amcalar.com"

RUN apk add --update git && rm -rf /var/cache/apk/* && npm install -g pm2@latest

VOLUME ["/app"]
ADD start /start
RUN chmod 755 /start
CMD ["/bin/sh", "/start"]

EXPOSE 80
EXPOSE 443
