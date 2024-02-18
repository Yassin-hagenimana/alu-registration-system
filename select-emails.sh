#!/bin/bash
grep "email," students-list_1023.txt . temp.txt

cut -d "," -f2 temp.txt > students-emails.txt

rm temp.txt

echo "Emails extracted and saved in students-emails.txt"
