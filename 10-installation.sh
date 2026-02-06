#!/bin/bash
USER =$(id -u)
if [ $USER -ne 0 ]; then
    echo "Please run the script as root user."
    exit 1
    fi
    echo "Installing the packag nginx the system..."
    dnf install nginx 