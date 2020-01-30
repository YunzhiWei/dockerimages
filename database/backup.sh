#!/bin/bash

docker run -it --rm --name dbbk --network dockerimages_bridgenet -e PGPASSWORD=123456 -v "$PWD"/backup:/backup postgres:12.1-alpine sh -c "pg_dump -h dbpg -U postgres docker > /backup/backup.bak"
mv -f backup/backup.bak backup/`date +%Y%m%d%H%M%S`.bak
