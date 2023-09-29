#!/bin/bash

# Get the URL from the command line argument
url=$1

# Send a request to the URL and capture the response body
response=$(curl -s $url)

# Get the size of the response body in bytes
body_size=${#response}

# Display the size of the response body
echo $body_size