#!/bin/bash
composer install
/etc/init.d/nginx start
php -S 0.0.0.0:70 -t /var/www/html
exec "$@"