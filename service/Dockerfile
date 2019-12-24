FROM node:12.14.0-alpine

ADD ./node_modules /node_modules
ADD ./dist /dist
WORKDIR /

ENTRYPOINT node dist/main.js
