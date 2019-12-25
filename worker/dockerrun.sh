#!/bin/bash

#start worker in docker container
# docker run -it --rm --name node_main_1 -v "$PWD":/usr/src/app -w /usr/src/app node:11.10.1-alpine node index.js

#start worker with image
docker run --name worker --network bridgenet -it chriswei/simpleworker
