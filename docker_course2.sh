#!/bin/bash

# Function to speak the input
speak() {
    echo "$1" | say
}

# Prompt user for input
read -p "Please enter a message: " message
# Speak the input
speak "$message"

# Prompt user for yes or no input
read -p "Do you want to join the Docker course? (yes/no): " response
# Speak the input
speak "Do you want to join the Docker course? $response"

# Check user's response
if [ "$response" = "yes" ]; then
    speak "Welcome to the Docker course!"
elif [ "$response" = "no" ]; then
    speak "Disappointed to see you leave."
else
    speak "Invalid input. Please enter 'yes' or 'no'."
fi

