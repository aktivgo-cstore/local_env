#!/bin/sh

mysql --user="root" --password="root" --host="cstore_mysql" --execute="CREATE USER IF NOT EXISTS mysql; \
    CREATE DATABASE IF NOT EXISTS cstore;"
