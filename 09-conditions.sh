#!/bin/bash
Number=$1

# -gt ->greater than
# -lt ->less than
# -eq ->equal to
# -ne ->not equal to

if [ $Number -gt 20 ];
then
    echo "gIVEN NUMBER: $Number is greater than 20"
elif [ $Number -eq0 ];then
     echo "given number: $Number is equal to 20"
    else
     echo "given number: $Number is less than 20"
fi
