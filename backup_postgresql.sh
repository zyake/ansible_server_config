#/bin/sh
pg_basebackup -D backup -F tar  -z
date_dir=`date "+%a"`
tar czvf backup.$date_dir.tar.gz backup
scp backup.$date_dir.tar.gz postgres@192.168.10.202:/var/lib/pgsql/backups
rm -fr backup.$date_dir.tar.gz
rm -fr backup
