#!/bin/bash

#start proxy with image
docker run --restart always --name proxy -v "$PWD"/www:/www -v "$PWD"/etc/nginx:/etc/nginx/ -p 8000:80 -d nginx:1.17.6-alpine

# 
# docker exec proxy ls /etc/nginx
# docker exec proxy ls /www

# 
# docker cp -a proxy:/etc/nginx/ ./etcnginx
# docker cp -a proxy:/www ./www