#!/bin/bash

WORKING_DIR="$HOME/Documents/freigo/"

gnome-terminal --working-directory=$WORKING_DIR --title=Horizon -- nodemon -e php --watch app --exec "php artisan horizon:terminate && php artisan horizon"

cd $WORKING_DIR || exit

nohup laravel-echo-server start --force >/dev/null 2>&1 &

LARAVEL_ECHO_SERVER_PID=$!

gnome-terminal --working-directory=$WORKING_DIR --title=Freigo

yarn hot

kill $(ps -u$(whoami) -o pid,cmd | ps -u1000 -o pid,cmd | awk '/\snode.*nodemon.*php/ {print $1}')

kill $LARAVEL_ECHO_SERVER_PID
