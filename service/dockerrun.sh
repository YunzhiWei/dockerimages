#!/bin/bash
#start service with its image

docker run -it --name service_1 -p 3000:3000 chriswei/simpleservice
