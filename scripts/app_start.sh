#!/bin/bash
cd /var/www/html
composer install
php -S 0.0.0.0:8000 -t web/
