FROM google/nodejs

MAINTAINER Armagan Amcalar "armagan@amcalar.com"

RUN npm install -g pm2@0.12.10

VOLUME ["/app"]
ADD start /start
RUN chmod 755 /start
CMD ["/start"]

EXPOSE 80
EXPOSE 443
