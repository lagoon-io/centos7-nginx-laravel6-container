#!/bin/sh

if [ -d "/var/www/app/public/app" ] && [ ! -d "/var/www/app/public/vendor" ]; then
  cd /var/www/app/public
  chmod -R 777 ./*
  composer install
else
  cd /var/www/app/public
  composer create-project "laravel/laravel=6.*.*" app
  chmod -R 777 ./*
fi
