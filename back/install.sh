#!/bin/bash
# apt install php-curl php-gd php-intl php-json php-mbstring php-xml php-zip
# apt-get install -y php8.0-common php8.0-fpm php8.0 php8.0-zip php8.0-soap php8.0-opcache php8.0-mysql php8.0-cli php8.0-gd php8.0-curl php8.0-xsl php8.0-imap php8.0-intl php8.0-sqlite3 php8.0-bcmath php8.0-mbstring php8.0-readline
cd /var/www/html
rm .gitignore
composer create-project symfony/skeleton /var/www/html
cd /var/www/html
composer req api
cp /app/entity-demo/* /var/www/html/src/Entity
echo "PHP install.php"
cd /app
ls -l
php install.php
echo "RUN SERVER BACK"
cd /var/www/html
php -S 0.0.0.0:8000 -t public
echo "FIN install.sh"