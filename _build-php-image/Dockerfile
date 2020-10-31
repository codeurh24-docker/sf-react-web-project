FROM php:7.4-apache

# COMPOSER
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version

# PHP EXTENSIONS
RUN apt-get update -qq && \
    apt-get install -qy \
    git \
    gnupg \
    unzip \
    zip 
RUN docker-php-ext-install -j$(nproc) opcache pdo_mysql
COPY ./conf/php.ini /usr/local/etc/php/conf.d/app.ini
RUN php -i