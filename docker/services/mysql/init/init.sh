#!/bin/sh

#mysql --user="dev" --password="dev" --host="cstore_mysql" --execute="CREATE DATABASE IF NOT EXISTS cstore; \
#    GRANT ALL PRIVILEGES ON cstore.* TO 'dev'@'localhost';"
mysql -uroot -proot --host="cstore_mysql" --execute="CREATE DATABASE IF NOT EXISTS cstore; \
    GRANT ALL PRIVILEGES ON cstore.* TO root@localhost;"
