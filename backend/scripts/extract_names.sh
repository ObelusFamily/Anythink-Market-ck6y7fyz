#!/bin/bash

# Check if argument is provided
if [ $# -eq 0 ]; then
    echo "No file specified."
    exit 1
fi

# The file to be checked
FILE=$1

# Check if the file exists
if [ -f "$FILE" ]; then
    # echo "File '$FILE' exists."
    # echo "Searching for lines containing 'amazon.com'..."
    grep -i "amazon.com" "$FILE" | awk '{print $3, $2}'
else
    echo "File '$FILE' does not eixts."
    exit 1
fi

