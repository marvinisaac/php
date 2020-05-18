FROM php:7.4-fpm-alpine
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini" && \
    apk add --no-cache gmp gmp-dev && \
    docker-php-ext-install \
        gmp \
        pdo \
        pdo_mysql
COPY ./override-php.ini $PHP_INI_DIR/conf.d/
