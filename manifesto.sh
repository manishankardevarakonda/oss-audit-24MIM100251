#!/bin/bash

# Open Source Manifesto Generator Script
# This script creates a personalized open source manifesto based on user input
# Author: Devarakonda Manishankar
# Registration: 24MIM10251

# Display instructions for the user
echo "Answer the following questions:"
echo ""

# Prompt user for their favorite open-source tool
# -p flag displays the prompt and reads input into the variable
read -p "1. Name one open-source tool you use: " TOOL

# Prompt user for what freedom means to them
read -p "2. What does freedom mean to you (one word)? " FREEDOM

# Prompt user for what they want to build and share
read -p "3. What would you like to build and share? " BUILD

# Get current date and time for the manifesto
DATE=$(date)

# Define the output filename for the manifesto
FILE="manifesto.txt"

# Create the manifesto file with header and user responses
# > overwrites the file if it exists, >> appends to the file
echo "--------------------------------" > $FILE
echo "Open Source Manifesto" >> $FILE
echo "Date: $DATE" >> $FILE
echo "--------------------------------" >> $FILE

# Add personalized statements based on user input
echo "I regularly use $TOOL in my work." >> $FILE
echo "For me, freedom means $FREEDOM." >> $FILE
echo "In the future, I would like to build $BUILD and share it openly." >> $FILE

# Display confirmation message to the user
echo ""
echo "Manifesto saved in $FILE"
echo "Preview:"

# Display the contents of the created manifesto file
cat $FILE