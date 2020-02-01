FROM node:12.14.1-alpine

ADD ./node_modules /node_modules
ADD ./dist /dist
ADD ./src/config /dist/config
ADD ./src/lib /dist/lib
WORKDIR /

ENTRYPOINT node dist/main.js
