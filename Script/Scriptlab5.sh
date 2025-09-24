#!/bin/bash
# This line tells the system to use the Bash shell to run the script.

# while loop condition
# The script uses a while loop to print numbers from 1 to 100.

start=1
# Initializes a variable 'start' with the value 1.

while [ $start -le 100 ]
# Begins a while loop that continues as long as 'start' is less than or equal to 100.

do
    echo "current number is $start"
    # Prints the current value of 'start' to the terminal.

    start=$(( start+1 ))
    # Increments the value of 'start' by 1.
done
# Ends the while loop block.