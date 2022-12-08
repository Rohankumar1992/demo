#!/bin/bash
cd /var/www/html
composer install
kill -9 `lsof -t -i:8000`
php -S 0.0.0.0:8000 -t web/ > /dev/null 2>&1 &
echo 'done'
