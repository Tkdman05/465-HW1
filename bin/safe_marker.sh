#!/bin/bash

# Check for exactly one argument
if [ "$#" -ne 1 ]; then
    echo "Error: Exactly one argument required" >&2
    exit 1
fi

# Check that the argument is exactly "course-marker"
if [ "$1" != "course-marker" ]; then
    echo "Error: Invalid argument. Only 'course-marker' is accepted" >&2
    exit 1
fi

# Create the directory structure if it doesn't exist
mkdir -p hw1/markers

# Create the marker file (overwrites if exists)
echo "Marker created at $(date)" > hw1/markers/marker.txt

# Check if file was created successfully
if [ -f hw1/markers/marker.txt ]; then
    echo "Successfully created hw1/markers/marker.txt"
    exit 0
else
    echo "Error: Failed to create marker file" >&2
    exit 1
fi