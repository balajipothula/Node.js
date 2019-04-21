FROM alpine:3.8
RUN apk update && apk upgrade && apk add --no-cache nodejs npm redis && npm init -y && npm install redis && rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*
