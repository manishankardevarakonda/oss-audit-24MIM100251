#!/bin/bash

# FOSS Package Inspector Script
# This script checks if a specific package (Python) is installed and displays details
# Author: Devarakonda Manishankar
# Registration: 24MIM10251

# Define the package we want to inspect (Python 3)
PACKAGE="python3"

# Display which package we're checking
echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Check if the package is installed using dpkg (Debian package manager)
# dpkg -l lists all installed packages, grep searches for our package
# ^ii  ensures we only find installed packages (ii = installed-installed)
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    # Package is found installed
    echo "$PACKAGE is installed."
    echo "Package Details:"
    # Show detailed package information using dpkg -l filtered for our package
    dpkg -l | grep $PACKAGE
else
    # Package is not found installed
    echo "$PACKAGE is NOT installed."
fi

# Add a blank line for better formatting
echo ""

# Display a description of the package using a case statement
echo "Description:"
case $PACKAGE in
    python3)
        echo "Python is a simple and powerful programming language used worldwide."
        ;;
    git)
        echo "Git is a version control system used to track code changes."
        ;;
    vlc)
        echo "VLC is a free media player that supports almost all formats."
        ;;
    firefox)
        echo "Firefox is an open-source web browser focused on privacy."
        ;;
    *)
        # Default case for any other package
        echo "No description available."
        ;;
esac