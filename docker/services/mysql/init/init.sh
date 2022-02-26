#!/bin/sh

mysql -uroot -proot --host="cstore_mysql" --execute="CREATE DATABASE IF NOT EXISTS cstore; \
    GRANT ALL PRIVILEGES ON cstore.* TO root@localhost;"
