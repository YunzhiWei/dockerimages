#!/bin/bash

docker run -it --rm --name dbbk --network dockerimages_bridgenet -e PGPASSWORD=123456 -v "$PWD"/backup:/backup postgres:12.1-alpine sh -c "/backup/backup.sh"
