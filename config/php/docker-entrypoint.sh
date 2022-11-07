#!/bin/bash
composer install
(cd /other_service && python3 /other_service/start.py &) # CWD needs to be /other_service/
/etc/init.d/nginx start
php -S 0.0.0.0:70 -t /var/www/html
exec "$@"