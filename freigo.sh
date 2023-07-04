#!/bin/bash

WORKING_DIR='/home/raydabbah/Documents/freigo/'

gnome-terminal --working-directory=$WORKING_DIR --title=Freigo

cd /home/raydabbah/Documents/freigo/ || exit

nohup laravel-echo-server start --force >/dev/null 2>&1 &

gnome-terminal --working-directory=$WORKING_DIR --title=Horizon -- nodemon -e php --watch app --exec "php artisan horizon:terminate && php artisan horizon"

if [[ $1 = "--dev" || $1 = "-d" ]]; then
    yarn dev
fi
yarn hot
