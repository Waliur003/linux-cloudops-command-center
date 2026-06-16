#!/bin/bash

BACKUP_DIR="$HOME/linux-cloudops-backups"
SOURCE_DIR="/var/log"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="logs-backup-$TIMESTAMP.tar.gz"

echo "===================================="
echo "          Backup Rotation"
echo "===================================="
echo

echo "[1] Creating backup directory:"
mkdir -p $BACKUP_DIR
echo "$BACKUP_DIR"
echo

echo "[2] Creating compressed backup of $SOURCE_DIR:"
sudo tar -czf "$BACKUP_DIR/$BACKUP_FILE" $SOURCE_DIR 2>/dev/null
echo "Backup created: $BACKUP_DIR/$BACKUP_FILE"
echo

echo "[3] Current Backups:"
ls -lh $BACKUP_DIR
echo

echo "[4] Removing backups older than 7 days:"
find $BACKUP_DIR -type f -name "*.tar.gz" -mtime +7 -delete
echo "Old backup cleanup completed."
echo

echo "Backup rotation completed."