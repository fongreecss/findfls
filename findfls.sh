#!/bin/bash

# Check if the script is invoked with an argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 <file-type> [search-path] [output-file]"
  exit 1
fi

# Set the file type to search for
file_type="$1"

# Set the search path, default to current directory if not specified
search_path=${2:-.}

# Set the output file, default to "output.txt" if not specified
output_file=${3:-output.txt}

# Find all files of the specified file type in the search path and its subdirectories
find "$search_path" -type f -name "*.$file_type" > "$output_file"

# Print the number of files found
num_files=$(cat "$output_file" | wc -l)
echo "Found $num_files files of type $file_type."

# Print the list of files found
echo "Files found:"
cat "$output_file"
