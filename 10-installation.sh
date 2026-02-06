#!/bin/bash
USER =$(id -u)
if [ $USER -ne 0 ]; then
    echo "Please run the script as root user."
    fi
    echo "Installing the packag ngin the system..."
    dnf install -y