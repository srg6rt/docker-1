#!/usr/bin/env bash

set -e

echo "Run dwnld_from_github.sh"

echo "Download from github zip archive"
./wget.exe https://github.com/FaztWeb/php-mysql-crud/archive/refs/heads/master.zip

echo "Uzip archive"
./unzip.exe master.zip

echo "Copy to tempo folder for docker-compose inside vagrant container"
cp -R php-mysql-crud-master/. tempo/

echo "Raname hostname" 
sed 's/localhost/db/g' tempo/db.php > tempo/db.php
