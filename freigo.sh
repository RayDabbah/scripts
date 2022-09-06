#!/bin/bash
gnome-terminal --working-directory=/home/raydabbah/Documents/freigo/ --title=Freigo
cd /home/raydabbah/Documents/freigo/ || exit
nohup laravel-echo-server start >/dev/null 2>&1 &
if [[ $1 = "--dev" || $1 = "-d" ]]; then
yarn dev
fi
yarn hot
