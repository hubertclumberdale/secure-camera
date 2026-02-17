#!/bin/bash

echo "Cleaning up secure camera installation..."

# Stop and disable the systemd service
sudo systemctl stop secure-camera.service 2>/dev/null
sudo systemctl disable secure-camera.service 2>/dev/null

# Kill any running processes
pkill -f mediamtx 2>/dev/null
pkill -f run.sh 2>/dev/null

# Remove systemd service file
sudo rm -f /etc/systemd/system/secure-camera.service
sudo systemctl daemon-reload

# Remove downloaded files
rm -f mediamtx_v1.16.0_linux_arm64.tar.gz
rm -f mediamtx
rm -f LICENSE

# Remove any log files that might have been created
rm -f *.log

echo "Cleanup complete!"
echo "- Stopped and removed systemd service"
echo "- Killed all running processes"
echo "- Removed downloaded mediamtx files"
echo "- Removed temporary files"
echo ""
echo "Project files (setup.sh, run.sh, stop.sh, mediamtx.yml) have been preserved."