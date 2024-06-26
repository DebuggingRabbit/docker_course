#!/bin/bash

# Function to speak the input
speak() {
    echo "$1" | say
}

# Prompt user for input
speak "Please enter your first name" & read -p "Please enter your first name: " message
# Speak the input
speak "Hi $message, how are you feeling today?"

# Prompt user for yes or no input
speak "Do you want to join the Docker course?. kindly reply with a yes or a no" & read -p "Do you want to join the Docker course? (yes/no): " response
# Speak the input


# Check user's response
if [ "$response" = "yes" ]; then
    echo "Welcome to the Docker course, 😊"
    speak "Welcome to the Docker course, 😊 by Debugging Rabbit"
    #speak "Welcome to the Docker course! by Debugging Rabbit"
elif [ "$response" = "no" ]; then
    speak "Disappointed to see you leave. $message"
else
    speak "Invalid input $message. Please enter 'yes' or 'no'."
fi

