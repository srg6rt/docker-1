#!/usr/bin/env bash

set -e

echo "Run dwnld_from_github.sh"

echo "Download from github zip archive"
./wget.exe https://github.com/FaztWeb/php-mysql-crud/archive/refs/heads/master.zip

sleep 5

echo "Uzip archive"
./unzip.exe master.zip

sleep 5

echo "Copy to tempo folder for docker-compose inside vagrant container"
cp -R php-mysql-crud-master/. tempo/

sleep 3

echo "Raname hostname" 
sed 's/localhost/db/g' tempo/db.php > tempo/db1.php
mv tempo/db1.php tempo/db.php
