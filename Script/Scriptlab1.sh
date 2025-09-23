#!/usr/bin/bash
# This is a Bash script to create a new directory and perform basic operations

# Define the path of the folder to be created
# 👉 NOTE: Replace the path below with the location where YOU want to create the folder
folder="/home/Mahi/kk/shellscript/mahesh/"

# Print the folder path to the terminal
echo "print the path $folder"

# Create the directory at the specified path
mkdir "$folder"

# Confirm that the folder was successfully created
echo "Successfully created folder mahesh at $folder"

# Change the permission of the newly created folder
# Here, we give read, write, and execute permissions to the owner (u),
# and read and execute permissions to the group (g) and others (o)
chmod 755 "$folder"

# Explanation of chmod 755:
# 7 = read (4) + write (2) + execute (1) → full access for owner
# 5 = read (4) + execute (1) → limited access for group
# 5 = read (4) + execute (1) → limited access for others

# Final message to confirm permission change
echo "Permissions for folder mahesh set to 755 (rwxr-xr-x)"