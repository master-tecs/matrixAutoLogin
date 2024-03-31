#!/bin/bash

# Path to the hidden credentials file
credentials_file="./.login"

# Check if the credentials file exists
if [ -f "$credentials_file" ]; then
    echo "Credentials file found: $credentials_file"

    # Read the username and password from the file
    IFS=":" read -r username password < "$credentials_file"
    
    # Displaying username and password for debugging purposes
    echo "Username: $username"
    echo "Password: *********"

    # Server details
    server="$username@matrix.senecapolytechnic.ca"

    # Prompt for login
    read -p "Do you want to login to Matrix (y/n)? " answer

    if [[ "$answer" =~ ^[Yy]$ ]]; then
        # Attempt SSH login to Matrix
        echo "Attempting SSH login to Matrix..."
        sshpass -p "$password" ssh $server
    else
        echo "Bye, not logging in to Matrix."
        exit 0
    fi
else
    echo "Credentials file not found. Please ensure the credentials file '$credentials_file' exists."
    exit 1
fi

exit 0

# **********************************  
# Created with LOVE By Master_tecs
# Contact or Contribut ig or GitHub
# **********************************