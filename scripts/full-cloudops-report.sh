#!/bin/bash

REPORT_DIR="reports"
REPORT_FILE="$REPORT_DIR/cloudops-report-$(date +"%Y-%m-%d_%H-%M-%S").txt"

mkdir -p $REPORT_DIR

echo "Generating full Linux CloudOps report..."
echo "Report file: $REPORT_FILE"

{
echo "===================================="
echo "   Linux CloudOps Full Report"
echo "   Generated: $(date)"
echo "===================================="
echo

echo "######## SYSTEM HEALTH ########"
./scripts/system-health-check.sh
echo

echo "######## SECURITY AUDIT ########"
./scripts/security-audit.sh
echo

echo "######## NETWORK DIAGNOSTIC ########"
./scripts/network-diagnostic.sh google.com
echo

echo "######## SERVICE MONITOR: SSH ########"
./scripts/service-monitor.sh ssh
echo

} > "$REPORT_FILE"

echo "Full report generated successfully."