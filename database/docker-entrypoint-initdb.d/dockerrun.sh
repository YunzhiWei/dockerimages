#!/bin/bash
#start database with its image

docker run --name dbpg -e POSTGRES_PASSWORD=123456 -p 5432:5432 -v ./docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d -d postgres:alpine
