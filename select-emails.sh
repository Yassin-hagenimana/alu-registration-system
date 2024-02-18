#!/bin/bash

# Extracts lines containing email addresses
grep -oP '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b' students-list_1023.txt > temp.txt

# Checks if any emails were extracted
if [ -s temp.txt ]; then
  # Extracts email addresses from the temp file
  grep -oP '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b' students-list_1023.txt | sort > student-emails.txt
  echo "Extracted email addresses saved to student-emails.txt"
else
  echo "No email addresses found in the file."
fi


rm temp.txt 2>/dev/null
