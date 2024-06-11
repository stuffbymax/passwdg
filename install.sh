#!/bin/bash

# This script installs the passwdg software to the user's home directory using a local fetch script

# Define variables
SOFTWARE_NAME="passwdg" 
FETCH_SCRIPT="./passwdg"  # Path to the local script
TEMP_DIR=$(mktemp -d)

# Function to display messages
display_message() {
    echo "$1"
}



# Function to move fetch script to /usr/local/bin and set executable permissions
setup_fetch_script() {
    display_message "Setting up passwdg script..."
    chmod +x passwdg
    sudo mv passwdg /usr/local/bin/passwdg
    display_message "Setting executable permissions..."
    sudo chmod +x /usr/local/bin/passwdg
    display_message "passwdg script setup complete."
}

# Main function
main() {
    setup_fetch_script
    
}

# Run the script
main
