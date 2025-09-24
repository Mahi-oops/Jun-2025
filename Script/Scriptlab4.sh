#!/bin/bash
# This line tells the system to use the Bash shell to interpret the script.

# Control lights based on environment input
# The script simulates turning on lights in different areas based on the argument provided.

env=$1
# Assigns the first command-line argument to the variable 'env'.
# Example: if you run `./script.sh room1`, then env="room1"

if [ "$env" = "room1" ]; then
    # Checks if the value of 'env' is "room1"
    for room in {1..4}; do
        # Loops through numbers 1 to 4
        echo "Turning room 1 lights num $room"
        # Prints a message for each light in room 1
    done

elif [ "$env" = "room2" ]; then
    # Checks if the value of 'env' is "room2"
    for room in {1..4}; do
        # Loops through numbers 1 to 4
        echo "Turning room 2 lights num $room"
        # Prints a message for each light in room 2
    done

elif [ "$env" = "garden" ]; then
    # Checks if the value of 'env' is "garden"
    start=1
    # Initializes a counter variable 'start' to 1
    while [ $start -le 10 ]; do
        # Loops while 'start' is less than or equal to 10
        echo "Turning Garden light num $start"
        # Prints a message for each garden light
        start=$((start + 1))
        # Increments 'start' by 1
    done

else
    # If 'env' doesn't match any of the expected values
    echo "Invalid Credential. Please re-enter the argument: $env"
    # Prints an error message with the invalid input
fi
# End of the conditional block