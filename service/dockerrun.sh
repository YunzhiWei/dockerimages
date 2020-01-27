#!/bin/bash
#start service api with its image

docker run --network bridgenet --name service -p 3000:3000 -d chriswei/restapi
