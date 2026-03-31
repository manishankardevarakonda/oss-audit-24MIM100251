#!/bin/bash

# Log File Analyzer Script
# This script searches for specific keywords in log files and counts occurrences
# Author: Devarakonda Manishankar
# Registration: 24MIM10251

# Get the log file path from first command line argument
LOGFILE=$1

# Get the keyword to search for from second argument, default to "error" if not provided
KEYWORD=${2:-error}

# Initialize counter for keyword occurrences
COUNT=0

# Check if the log file exists
if [ ! -f "$LOGFILE" ]; then
    echo "File not found: $LOGFILE"
    exit 1
fi

# Read the log file line by line using a while loop
# IFS= prevents word splitting, -r prevents backslash interpretation
while IFS= read -r LINE; do
    # Check if the current line contains the keyword (case-insensitive)
    # grep -iq performs case-insensitive search and quiet mode (no output)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Increment counter if keyword is found
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Display the analysis results
echo "--------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------"

# Show the last 5 lines that contain the keyword for context
# grep -i performs case-insensitive search, tail -5 shows last 5 matches
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5