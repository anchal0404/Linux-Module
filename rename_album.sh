#!/bin/bash
<<DOC
NAME:ANCHAL RATHORE
DATE: 01/04/2023
DESCRIPTION:Script to rename the jpg files with the name passed through command line.
SAMPLE INPUT:DSN001.jpg
SAMPLE OUTPUT:day_out001.jpg
DOC
if [ $# -eq 0 ] #checking the cla is passed or not
then
    echo "Error : Please pass the prefix name through command line."
elif [ $# -gt 0 ] #if cla passed 
then
    arr=(`ls *.jpg`) #storing all the jpg file in an array.
    len=${#arr[@]} #assign a variable to length or array.
    for i in `seq 0 $((len - 1 ))` #start loop till (n-1) index or array.
    do
        str=${arr[i]} #store all the file name as string in variable.
        code=`echo "$str" | tr -d -c '[:digit:]'` #store the value of fetch numeric value in a variable.
        mv "$str" "$1$code.jpg"  #rename file with give suffix from cla and .jpg extension.
    done
fi

