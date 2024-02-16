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
