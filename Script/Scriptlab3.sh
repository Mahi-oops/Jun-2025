#!/bin/bash
# A simple for loop script 
# This line tells the system to use the Bash shell to run the script

# Define an array named 'rooms' with six room names
rooms=("Room1" "Room2" "Room3" "Room4" "Room5" "Room6")

# Start a loop that goes through each item in the 'rooms' array
for room in "${rooms[@]}"
do
    # For each room, print a message saying the light is getting turned off
    echo "light is getting off $room"
done