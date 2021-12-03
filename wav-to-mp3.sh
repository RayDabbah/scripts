#!/bin/bash

for file in *.wav; do ffmpeg -i "${file}"  "${file/.wav/.mp3}"; done
