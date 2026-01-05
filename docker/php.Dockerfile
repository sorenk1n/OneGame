FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

# 将这行添加到 Dockerfile 中第一个 RUN 命令之前
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk add --no-cache $PHPIZE_DEPS \
    && docker-php-ext-install pdo_mysql \
    && apk del $PHPIZE_DEPS

COPY . /var/www/html

RUN chown -R www-data:www-data /var/www/html
