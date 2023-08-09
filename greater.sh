#!/bin/bash
read -p "Enter the number" num
if [ $num -gt 5 ]
then
    echo "The number is greater than 5"
elif [ $num -eq 5 ]
then
    echo "The number is equal to 5"
else
    echo "The false"
fi
