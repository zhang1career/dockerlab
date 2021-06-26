FROM php:7.4-fpm

RUN apt-get update && apt-get install -y libicu-dev \
    && docker-php-ext-install intl \
    && docker-php-ext-enable intl

RUN pecl install redis-5.1.1 \
    && pecl install xdebug-2.8.1 \
    && docker-php-ext-enable redis xdebug