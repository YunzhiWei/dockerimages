# env | grep PGPASSWORD > backup.bak

pg_dump -h dbpg -U postgres docker > /backup/backup.bak
mv -f /backup/backup.bak /backup/`date +%Y%m%d%H%M%S`.bak
