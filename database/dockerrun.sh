#!/bin/bash

#start database with its image
docker run --name dbpg --network bridgenet -e POSTGRES_PASSWORD=123456 -p 5432:5432 -v "$PWD"/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d -d postgres:alpine

#execute bash in container
#docker exec -it dbpg /bin/bash
