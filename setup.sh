#!/bin/bash
wget https://github.com/bluenviron/mediamtx/releases/download/v1.16.0/mediamtx_v1.16.0_linux_arm64.tar.gz

tar -xvzf mediamtx_v1.16.0_linux_arm64.tar.gz --exclude=mediamtx.yml

./mediamtx &
rpicam-vid --width 1280 --height 720 --framerate 30 --codec h264 --inline --listen -o tcp://0.0.0.0:8556