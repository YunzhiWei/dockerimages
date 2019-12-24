#!/bin/bash
#start service with its image

docker run -it --network host --name service_1 -p 3000:3000 chriswei/simpleservice
