#!/bin/bash

# question 1 

# a.Function to create student record

create_student_record(){
    echo "Enter student email:"
    read email

    echo "Enter student age:"
    read age

    echo "Enter student ID:"
    read id

    # Check if ID already exists
    if grep -q "^$id," students-list_1023.txt; then
        echo "Student with ID $id already exists."
    elif grep -q "$email" students-list_1023.txt; then
        echo "Student with email $email already exists."
    else
        echo "$id, $email, $age" >> students-list_1023.txt
        echo "Student with ID $id recorded successfully."
    fi
}

# b.Function to view all students in file

view_student_list(){
    if [ -s "students-list_1023.txt" ]; then
        echo "List of all students"
        echo "ID  | Email                 | Age"
        echo "----|-----------------------|----"
        awk -F ", " '{printf "%-4s| %-23s| %-3s\n", $1, $2, $3}' students-list_1023.txt
    else
        echo "No students found!"
    fi
}



# Applivation MENU

while true; do
    echo "Choose an option:"
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student record (by Student ID)"
    echo "4. Update student record (by Student ID)"
    echo "5. Exit the application"
    read -p "Enter your choice:" choice

    case $choice in
	1) create_student_record ;;
	2) view_student_list ;;
	3) delete_student_record ;;
	4) update_student_record ;;
	5) exiting_application ;;
	*) echo "Invalid option."

    esac
done
