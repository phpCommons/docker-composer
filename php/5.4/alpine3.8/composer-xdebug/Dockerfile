FROM php:5.4-composer-alpine3.8

# Install xdebug
RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug-2.2.6 \
    && docker-php-ext-enable xdebug

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]

CMD ["composer"]