#!/bin/bash

./mediamtx &
rpicam-vid --width 1280 --height 720 --framerate 30 --codec h264 --inline --listen -o tcp://0.0.0.0:8556