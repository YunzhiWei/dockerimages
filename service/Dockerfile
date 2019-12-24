FROM node:11.10.1-alpine

ADD ./dist /dist
WORKDIR /

ENTRYPOINT node dist/main.js
