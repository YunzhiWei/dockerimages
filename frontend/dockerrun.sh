#!/bin/bash

#start proxy with image --restart always 
# Bug: !!! docker run --name proxy -v "$PWD"/www:/www -v "$PWD"/etc/nginx:/etc/nginx/ -p 8000:80 -d nginx:1.17.6-alpine
# Bug: !!! docker run --name proxy -v "$PWD"/www:/www -p 8000:80 -d nginx:1.17.6-alpine
docker run --name proxy -p 80:80 -d chriswei/frontend:0.0.1

# 
# docker exec proxy ls /etc/nginx
# docker exec proxy ls /www

# 
# docker cp -a proxy:/etc/nginx/ ./etcnginx
# docker cp -a proxy:/www ./www
