#!/bin/bash
<<DOC
NAME::ANCHAL RATHORE
DATE: 
DESCRIPTION:
SAMPLE INPUT:
SAMPLE OUTPUT:
DOC
if [ $# -lt 3 ]
then
    echo "Error : arguments missing!"
    echo "Usage : ./file_filter.sh start_line upto_line filename"
    echo "For eg. ./file_filter.sh 5 5 <file>"
elif [ $# -eq 3 ]
then
fetch_line=$(($1+$2-1))
total_line=`cat $3 | wc -l`
    if [ $fetch_line -lt $total_line ]
    then
        head -$fetch_line $3 | tail -$2
    else
       echo "Error : $3 is having only $total_line lines. file should have atleast $fetch_line lines"
    fi
fi 
