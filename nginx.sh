#!/bin/bash
rm -rf /home/container/tmp/*
PHP_VERSION=$(cat "/home/container/php_version.txt")

echo "[Server] Käynnistetään PHP-FPM ${PHP_VERSION}"
php-fpm$PHP_VERSION -c /home/container/php/php.ini --fpm-config /home/container/php/php-fpm.conf --daemonize > /dev/null 2>&1

echo "[Server] Käynnistetään NGINX"
echo "[Server] Palvelut käynnistetty onnistuneesti!"
echo "==========================="
echo "[Suomifin.cloud] System hosted by: Suomifin.eu"
echo "==========================="
nginx -c /home/container/nginx/nginx.conf -p /home/container
