FROM nginx:alpine
LABEL maintainer="thotmail <parva@thotmail.ca>"

COPY default.conf /etc/nginx/conf.d/default.conf
COPY betterlisting /betterlisting
COPY betterlisting/top.html /back/top.html
COPY betterlisting.sh /docker-entrypoint.d/betterlisting.sh

VOLUME ["/files"]
EXPOSE 80
