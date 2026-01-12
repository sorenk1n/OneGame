FROM php:7.4-fpm-alpine

RUN apk add --no-cache \
        $PHPIZE_DEPS \
        mariadb-dev \
    && docker-php-ext-install pdo_mysql \
    && apk del --no-cache $PHPIZE_DEPS
