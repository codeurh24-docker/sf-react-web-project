#!/bin/bash
set -e
    mkdir -p /var/www/html/config/jwt
    jwt_passphrase=${JWT_PASSPHRASE:-$(grep ''^JWT_PASSPHRASE='' .env | cut -f 2 -d ''='')}
    echo "$jwt_passphrase" | openssl genpkey -out /var/www/html/config/jwt/private.pem -pass stdin -aes256 -algorithm rsa -pkeyopt rsa_keygen_bits:4096
    echo "$jwt_passphrase" | openssl pkey -in /var/www/html/config/jwt/private.pem -passin stdin -out /var/www/html/config/jwt/public.pem -pubout
    setfacl -R -m u:www-data:rX -m u:"$(whoami)":rwX /var/www/html/config/jwt
    setfacl -dR -m u:www-data:rX -m u:"$(whoami)":rwX /var/www/html/config/jwt