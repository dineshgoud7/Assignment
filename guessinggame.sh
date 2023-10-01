#!/bin/bash

# Function to count the number of files in the current directory
function count_files {
    local num_files=$(ls -l | grep -v ^d | wc -l)
    echo $num_files
}

# Get the correct number of files in the current directory
correct_count=$(count_files)

# Welcome message
echo "Welcome to the Guessing Game!"

# Loop until the user guesses the correct number
while true; do
    read -p "Guess how many files are in the current directory: " user_guess

    if [[ $user_guess -eq $correct_count ]]; then
        echo "Congratulations! Your guess is correct."
        break
    elif [[ $user_guess -lt $correct_count ]]; then
        echo "Your guess is too low. Try again."
    else
        echo "Your guess is too high. Try again."
    fi
done
