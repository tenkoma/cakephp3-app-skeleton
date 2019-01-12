FROM php:7.2-apache

RUN apt-get update && apt-get install -y --no-install-recommends \
        nano \
        libicu-dev \
    && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install intl \
    && docker-php-ext-install pdo_mysql \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

ENV APACHE_DOCUMENT_ROOT /var/www/html/webroot

RUN a2enmod rewrite

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
