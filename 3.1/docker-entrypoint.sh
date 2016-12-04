#!/bin/ash

echo -e "start php-fpm in background."
php-fpm 

echo -e "start nginx in foreground...\n"
nginx -g 'daemon off;'
