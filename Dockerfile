FROM mhart/alpine-node:5.7.1

MAINTAINER Armagan Amcalar "armagan@amcalar.com"

RUN apk add --update git && \
    npm install -g pm2@latest && \
    apk del git && \
    rm -rf /etc/ssl \
    /usr/share/man /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp \
    /usr/lib/node_modules/npm/man /usr/lib/node_modules/npm/doc /usr/lib/node_modules/npm/html

VOLUME ["/app"]
ADD start /start
RUN chmod 755 /start
CMD ["sh", "/start"]

EXPOSE 80
EXPOSE 443
