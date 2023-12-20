FROM node:20.10-alpine

RUN apk add --update --no-cache git bash

WORKDIR /var/www
