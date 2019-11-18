FROM composer:latest
RUN composer global require hirak/prestissimo && \
    docker-php-ext-install sockets && \
    docker-php-ext-install pcntl

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]
