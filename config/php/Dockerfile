FROM php:8.0-fpm
RUN docker-php-ext-install pdo pdo_mysql;
COPY --from=composer/composer /usr/bin/composer /usr/bin/composer
ADD ./docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm"]

