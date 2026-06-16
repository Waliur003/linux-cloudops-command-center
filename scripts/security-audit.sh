#!/bin/bash

echo "===================================="
echo "        Linux Security Audit"
echo "===================================="
echo

echo "[1] Current Logged-In Users:"
who
echo

echo "[2] Recent Login History:"
last | head -n 10
echo

echo "[3] Users With Sudo Access:"
getent group sudo
echo

echo "[4] Failed SSH Login Attempts:"
if [ -f /var/log/auth.log ]; then
    sudo grep "Failed password" /var/log/auth.log | tail -n 10
else
    echo "/var/log/auth.log not found on this system."
fi
echo

echo "[5] Count of Failed SSH Attempts:"
if [ -f /var/log/auth.log ]; then
    sudo grep "Failed password" /var/log/auth.log | wc -l
else
    echo "0 or log file not available."
fi
echo

echo "[6] Open Listening Ports:"
sudo ss -tulnp
echo

echo "[7] World-Writable Files Check:"
sudo find /tmp -type f -perm -0002 2>/dev/null | head -n 10
echo

echo "[8] SUID Files Check:"
sudo find /usr/bin -perm -4000 2>/dev/null | head -n 10
echo

echo "Security audit completed."