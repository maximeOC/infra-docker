FROM php:apache
RUN docker-php-ext-install pdo pdo_mysql;
# ADD ./docker-entrypoint.sh /usr/local/bin/
# ENTRYPOINT ["docker-entrypoint.sh]
CMD ["apache2-foreground"]



# If you have native dependencies, you'll need extra tools
# RUN apk add --no-cache make gcc g++ python3