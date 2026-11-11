#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-practice" #this cmd will create a folder in log folder as shell-practice
logs_file="${logs_folder}/${0}.log" # this cmd will create a file as 11-redirections-logs.sh.log in logs_folder folder 

if [ $user_id -ne 0 ]; then
    echo "Please run this script with sudo access.."
    exit 1
fi

mkdir -p $logs_folder # logs_folder will be created

echo "Script started execution at $(date +"%F %T")" &>> $logs_file # this cmd will print the current date and time and displays the appended logs on the screen

validate(){
    if [ $1 -ne 0 ]; then
        echo "${2}..FAILED" | tee -a $logs_file #displays the o/p onthe screen
        exit 1
    else
        echo "${2}..SUCCESS" | tee -a $logs_file
    fi
}

dnf install nginx -y &>> $logs_file
validate $? "Nginx Installation"

dnf install mysql -y &>> $logs_file
validate $? "Mysql Installation"

echo "Script execution completed at $(date +"%F %T")" &>> $logs_file