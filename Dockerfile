FROM nginx:alpine
LABEL maintainer="thotmail <parva@thotmail.ca>"

COPY default.conf /etc/nginx/conf.d/default.conf
COPY betterlisting.sh /docker-entrypoint.d/30-betterlisting.sh

COPY fetch.sh fetch.sh
COPY cpmap.txt /

RUN apk add --no-cache git bash
RUN ./fetch.sh
RUN rm cpmap.txt fetch.sh
RUN apk del git bash
RUN mkdir back
RUN cp betterlisting/top.html back/top.html

VOLUME ["/files"]
EXPOSE 80
