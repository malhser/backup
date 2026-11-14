#!/bin/bash

# Define source and destination directories
SOURCE_DIR="/home/user/app_data/"
DEST_DIR="/home/user/backups"

# Get current date in YYYY-MM-DD format
DATE=$(date +%Y-%m-%d)

# Check whether source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "ERROR: Source directory does not exist!"
    exit 1
fi

# Check whether destination directory exists
mkdir -p "$DEST_DIR"

# Define backup filename
BACKUP_FILENAME="backup_${DATE}.tar.gz"

# Compress source directory
tar -czf "$DEST_DIR/$BACKUP_FILENAME" "$SOURCE_DIR"

# Check backup command status
if [ $? -eq 0 ]; then
    echo "Backup completed successfully!"
    echo "Backup file: $DEST_DIR/$BACKUP_FILENAME"
else
    echo "ERROR: Backup failed!"
    exit 1
fi

