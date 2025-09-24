#!/bin/bash
# A simple script for creating a file inside a folder

# Define the full path of the file to be created
# 👉 NOTE: Replace the path below with the location where YOU want to create the file
# Make sure the folder exists before running the script, or use 'mkdir' to create it
file="/home/Mahi/kk/shellscript/mahesh/mahi"

# Create the file at the specified path
touch "$file"

# Print the full path of the newly created file
echo "A text file has successfully been created at path: $file"

# Extract and print only the file name from the full path
# 'basename' removes the folder path and shows just the file name
echo "File name is: $(basename "$file")"