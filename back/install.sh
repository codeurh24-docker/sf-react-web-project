#!/bin/bash
echo "START install.sh"
cd /var/www/html
chmod -R 777 /var/www/html
echo "COMPOSER INSTALL"
composer install
chmod -R 777 /var/www/html
rm -r /var/cache/*
rm -r /var/log/*
echo "CREATE DATABASE"
cd /var/www/html
php bin/console d:d:c
echo "CREATE USER TABLE"
php bin/console d:s:u --force
echo "CREATE USER IN USER TABLE"
php bin/console user:create admin@yopmail.com password
echo "INSTALL JWT"
composer require jwt-auth
echo "GENERATE KEYS JWT"
sh /app/JWT_generate_keys.sh
echo "RUN SERVER BACK"
cd /var/www/html
php -S 0.0.0.0:8000 -t public
echo "FIN install.sh"