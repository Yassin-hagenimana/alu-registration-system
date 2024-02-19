
#!/bin/bash

# Create directory if it doesn't exist
directory="negpod_21-q1"
mkdir -p "$directory"

# Move all files created in question 1 to the directory
mv main.sh select-emails.sh student-emails.txt students-list_1023.txt "$directory/"

echo "Files moved to $directory"