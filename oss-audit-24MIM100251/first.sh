#!/bin/bash

# System Identity Report Script
# This script displays basic system information in a formatted way
# Author: Devarakonda Manishankar
# Registration: 24MIM10251

# Display a formatted header for the system information
echo "================================"
echo "   System Identity Information   "
echo "================================"

# Get current username using whoami command
USER_NAME=$(whoami)

# Get home directory path from HOME environment variable
HOME_DIR=$HOME

# Get kernel version using uname command with -r flag (release)
KERNEL=$(uname -r)

# Get Linux distribution name and version using lsb_release command
# 2>/dev/null redirects errors to null, cut -f2 extracts the description field
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)

# Get system uptime in human-readable format using uptime -p
UPTIME=$(uptime -p)

# Get current date and time using date command
CURRENT_DATE=$(date)

# Display all collected system information in a formatted manner
echo "User Name      :$USER_NAME"
echo "Home Directory :$HOME_DIR"
echo "Kernel Version :$KERNEL"
echo "Distribution   :$DISTRO"
echo "System Uptime  :$UPTIME"
echo "Current Date   :$CURRENT_DATE"
echo "License        :GNU General Public License"