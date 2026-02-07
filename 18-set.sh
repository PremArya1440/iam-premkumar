#!/bin/bash
set -e # this will be checking for error in each and every line of the script, if any line is having error, it will exit the script immediately

#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/validation"
LOGS_FILE="/var/log/shell-script/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m" 


if [ $USERID -ne 0 ]; then
    echo -e ase run this script with root user access" | tee -a $LOGS_FILE
    exit 1
fi
mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$R $2 ... FAILURE $N" | tee -a $LOGS_FILE
        exit 1
    else
        echo -e "$G $2 ... SUCCESS $Y" | tee -a $LOGS_FILE
    fi
}

for package in $@  #sudo sh-> all the arguments passed to the script
 do
    dnf list install $package &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now"

    dnf install $package -y &>> $LOGS_FILE
    # VALIDATE $? "Installing $package"
        else
            echo -e "$package is already installed, skipping installation" $Y SKIPPING $N"
            
        fi
        done



