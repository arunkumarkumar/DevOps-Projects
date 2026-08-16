#!/bin/bash

###############
#Author : Arunkumar
#Date : 16-08-2026
#
#Version: v1
#
# This script will backup the files from source to destination folder.
###############

set -e # Exit on any error

SOURCE_DIR="$1" #Input source directory to backup
BACKUP_DIR="$HOME/backups" #Backup destination directory

#Validation for source directory
if [ -z "$SOURCE_DIR" ]; then
    echo "Usage: $0 <source_directory>"
    exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' does not exist."
    exit 1
fi  


#Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

#Create a timestamped backup file name
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
DIR_NAME=$(basename "$SOURCE_DIR")
BACKUP_FILE="$BACKUP_DIR/${DIR_NAME}_backup_$TIMESTAMP.tar.gz"

#Create a compressed tarball of the source directory
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"


#Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed."
    exit 1
fi
