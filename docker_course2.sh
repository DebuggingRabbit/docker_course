#!/bin/bash

# Function to speak the input
speak() {
    echo "$1" | say
}

# Prompt user for input
read -p "Please enter your first name: " message
# Speak the input
speak "Hi $message, how are you feeling today"

# Prompt user for yes or no input
speak "Do you want to join the Docker course?" & read -p "Do you want to join the Docker course? (yes/no): " response
# Speak the input


# Check user's response
if [ "$response" = "yes" ]; then
    speak "Welcome to the Docker course! $message by Debugging Rabbit"
elif [ "$response" = "no" ]; then
    speak "Disappointed to see you leave. $message"
else
    speak "Invalid input $message. Please enter 'yes' or 'no'."
fi

