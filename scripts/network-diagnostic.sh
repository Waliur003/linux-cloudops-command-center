#!/bin/bash

TARGET_DOMAIN=${1:-google.com}

echo "===================================="
echo "       Linux Network Diagnostic"
echo "===================================="
echo

echo "[1] IP Address Information:"
ip addr
echo

echo "[2] Routing Table:"
ip route
echo

echo "[3] DNS Lookup for $TARGET_DOMAIN:"
if command -v dig >/dev/null 2>&1; then
    dig $TARGET_DOMAIN
else
    nslookup $TARGET_DOMAIN
fi
echo

echo "[4] Ping Test:"
ping -c 4 $TARGET_DOMAIN
echo

echo "[5] HTTP Header Test:"
curl -I https://$TARGET_DOMAIN
echo

echo "[6] Open Listening Ports:"
sudo ss -tulnp
echo

echo "Network diagnostic completed."