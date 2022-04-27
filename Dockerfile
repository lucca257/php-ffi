FROM php:8.1-fpm-alpine

RUN apk add --no-cache --virtual .persistent-deps libffi-dev \
    && docker-php-ext-configure ffi --with-ffi \
    && docker-php-ext-install ffi

CMD php-fpm