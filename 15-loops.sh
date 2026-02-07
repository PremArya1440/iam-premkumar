#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/validation"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access" | tee -a $LOGS_FILE
    exit 1
fi
mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 ... FAILURE" | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2 ... SUCCESS" | tee -a $LOGS_FILE
    fi
}

for package in $@ #$@ -> all the arguments passed to the script
 do
    dnf install $package &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now"

    dnf install $package -y &>> $LOGS_FILE
    VALIDATE $? "Installing $package"
        else
            echo "$package is already installed, skipping installation"
            
        fi
done

