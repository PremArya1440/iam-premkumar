#!/bin/bash
USER =$(id -u)
if [ $USER -ne 0 ]; then
    echo "Please run the script as root user."
    exit 1
    fi
    echo "Installing the packag nginx the system..."
    dnf install nginx -y

    if [$? -ne 0 ]; then
    echo "installing nginx package failed."
    exit 1
    
    else 
    echo "installing nginx package is successful."
    fi  

    dnf install nginx -y

    if [$? -ne 0 ]; then
    echo "installing MySQL ..failed."
    exit 1
    
    else 
    echo "installing MySQL is successful."
    fi

    dnf install nodejs -y

    if [$? -ne 0 ]; then
    echo "installing nodejs ..failed."
    exit 1
    
    else 
    echo "installing nodejs is successful."
    fi