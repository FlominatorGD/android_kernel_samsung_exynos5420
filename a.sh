#!/bin/bash

# Define the directory path
dir_path="./"

# Loop through all files and directories in the specified directory
for file in $(find "$dir_path" -type f -o -type d); do
  # Get the file permissions using ls command
  permissions=$(ls -ld "$file" | cut -d " " -f 1-5)
  
  # Print the file name and permissions
  echo "$file: $permissions"
done
