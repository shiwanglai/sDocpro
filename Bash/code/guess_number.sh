#! /bin/bash

# get target
target=$((RANDOM % 100 + 1))
echo Guess a number bewteen 1 - 100:

# loop to guess
while true; do
    # input
    read guess

    # check
    if [ $guess -gt $target ]; then
        echo Bigger!
    elif [ $guess -lt $target ]; then
        echo Smaller!
    else
        echo Got it!! The number is $target !
	break
    fi
done

