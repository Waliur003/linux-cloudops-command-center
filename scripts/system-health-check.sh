#!/bin/bash

echo "===================================="
echo "      Linux System Health Check"
echo "===================================="
echo

echo "[1] Hostname:"
hostname
echo

echo "[2] Current User:"
whoami
echo

echo "[3] System Uptime and Load:"
uptime
echo

echo "[4] Memory Usage:"
free -h
echo

echo "[5] Disk Usage:"
df -h
echo

echo "[6] CPU Information:"
lscpu | grep -E "Model name|CPU\\(s\\)"
echo

echo "[7] Top 5 Memory-Consuming Processes:"
ps aux --sort=-%mem | head -n 6
echo

echo "[8] Top 5 CPU-Consuming Processes:"
ps aux --sort=-%cpu | head -n 6
echo

echo "Health check completed."