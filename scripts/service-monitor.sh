#!/bin/bash

SERVICE_NAME=${1:-ssh}

echo "===================================="
echo "          Service Monitor"
echo "===================================="
echo

echo "Checking service: $SERVICE_NAME"
echo

echo "[1] Service Status:"
sudo systemctl status $SERVICE_NAME --no-pager
echo

echo "[2] Recent Service Logs:"
sudo journalctl -u $SERVICE_NAME -n 20 --no-pager
echo

echo "[3] Is Service Enabled on Boot?"
sudo systemctl is-enabled $SERVICE_NAME
echo

echo "Service monitor completed."