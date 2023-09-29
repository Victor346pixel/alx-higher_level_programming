#!/bin/bash

# Check if the URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send a GET request to the provided URL and store the response in a variable
response=$(curl -s -o /dev/null -w "%{http_code}" "$1")

# Check if the HTTP response code is 200 (OK)
if [ "$response" -eq 200 ]; then
    # If the response code is 200, display the body of the response
    curl -s "$1"
else
    echo "HTTP response code: $response"
fi