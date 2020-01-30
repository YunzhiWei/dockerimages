#!/bin/bash

#start database with its image
docker run -d --name dbpg --network bridgenet -e POSTGRES_PASSWORD=123456 -p 5432:5432 -v "$PWD"/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d -v "$PWD"/script:/script -v "$PWD"/data:/var/lib/postgresql/data postgres:12.1-alpine

#execute bash in container
#docker exec -it dbpg /bin/bash

# psql -h localhost < db.sql