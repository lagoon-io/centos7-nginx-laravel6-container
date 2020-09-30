#!/bin/sh

if [ -d "/var/www/app/public/app" ] && [ ! -d "/var/www/app/public/vendor" ]; then
  cd /var/www/app/public
  chmod -R 777 ./*
  composer install
else
  cd /var/www/app/public
  composer create-project "laravel/laravel=6.*.*" laravelapp
  chmod -R 777 ./*
  # .始まりのファイルもコピーできるようにする
  shopt -s dotglob
  cp -r /var/www/app/public/laravelapp/* /var/www/app/public/
  rm -rf laravelapp
  cp .env.example .env
  php artisan key:generate
  php artisan config:cache
fi
