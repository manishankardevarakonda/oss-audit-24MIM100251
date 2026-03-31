#!/bin/bash

# Disk and Permission Auditor Script
# This script analyzes important directories for size, permissions, and ownership
# Author: Devarakonda Manishankar
# Registration: 24MIM10251

# Define an array of important system directories to audit
DIRS=("/etc" "/home" "/usr/bin" "/var/log")

# Display header for the audit report
echo "Directory Audit Report"
echo "--------------------------------"

# Loop through each directory in the DIRS array
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists
    if [ -d "$DIR" ]; then
        # Get directory size using du (disk usage) command
        # -s flag shows summary, -h shows human-readable format
        # 2>/dev/null redirects errors to null, cut -f1 extracts the size field
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        # Get directory permissions using ls -ld (long listing, directory itself)
        # awk '{print $1}' extracts the first field (permissions string)
        PERMISSION=$(ls -ld "$DIR" | awk '{print $1}')
        
        # Get directory owner using ls -ld and awk to extract third field
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        
        # Get directory group using ls -ld and awk to extract fourth field
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        
        # Display directory name and its information in a formatted way
        echo "$DIR"
        echo "  Size       : $SIZE"
        echo "  Permission : $PERMISSION"
        echo "  Owner      : $OWNER"
        echo "  Group      : $GROUP"
        echo ""
    else
        # If directory doesn't exist, display a message
        echo "$DIR does not exist"
    fi
done