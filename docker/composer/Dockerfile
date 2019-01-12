FROM composer

RUN apk add icu-dev

RUN docker-php-ext-install intl

RUN composer global require hirak/prestissimo
