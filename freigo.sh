#!/bin/bash
gnome-terminal --working-directory=/home/raydabbah/Documents/shifl/ --title=Freigo
cd /home/raydabbah/Documents/shifl/
nohup laravel-echo-server start >/dev/null 2>&1 &
if [ "$1" != "--no-dev" ]; then
yarn dev
fi
yarn hot
