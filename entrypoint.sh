#!/usr/local/bin/dumb-init /bin/sh
php-fpm &
nginx -g "daemon off;"