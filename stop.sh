#!/bin/bash

echo "Stopping secure camera processes..."

# Stop and disable the systemd service
sudo systemctl stop secure-camera.service
sudo systemctl disable secure-camera.service

# Kill any running mediamtx processes
pkill -f mediamtx

# Kill any processes from run.sh that might still be running
pkill -f run.sh

echo "All secure camera processes have been stopped."
echo "The systemd service has been disabled."
echo "To completely remove the service file, run:"
echo "sudo rm /etc/systemd/system/secure-camera.service"
echo "sudo systemctl daemon-reload"