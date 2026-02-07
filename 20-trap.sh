#!/bin/bash
set -e
trap 'echo "An error occurred at line $LINENO while executing: $BASH_COMMAND"' ERR

USERID=$(id -u)
LOGS_FOLDER="/var/log/validation"
LOGS_FILE="/var/log/shell-script/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m" 


if [ $USERID -ne 0 ]; then
    echo -e "$R Please run this script with root user access $N" | tee -a $LOGS_FILE
    exit 1
fi
mkdir -p $LOGS_FOLDER


for package in $@  #sudo sh-> all the arguments passed to the script
 do
    dnf list install $package &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now"

    dnf install $package -y &>> $LOGS_FILE
    
        else
            echo -e "$package is already installed, skipping installation $Y SKIPPING $N"
            
        fi
        done
        

