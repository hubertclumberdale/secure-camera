#!/bin/bash

# Download mediamtx
wget https://github.com/bluenviron/mediamtx/releases/download/v1.16.0/mediamtx_v1.16.0_linux_arm64.tar.gz

# Extract the archive (excluding the default config to preserve our custom one)
tar -xvzf mediamtx_v1.16.0_linux_arm64.tar.gz --exclude=mediamtx.yml

sudo cp systemd/secure-camera.service /etc/systemd/system/secure-camera.service
sudo systemctl daemon-reload
sudo systemctl enable secure-camera.service
sudo systemctl start secure-camera.service

# Make run script executable and execute it
chmod +x run.sh
./run.sh


