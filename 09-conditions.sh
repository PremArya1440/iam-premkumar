#!/bin/bash
Number=25

# -gt ->greater than
# -lt ->less than
# -eq ->equal to
# -ne ->not equal to

if [ $Number -gt 20 ];
then
    echo "Number is greater than 20"
else
    echo "Number is less than or equal to 20"
fi