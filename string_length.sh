#!/bin/bash
<<DOC
NAME::ANCHAL RATHORE
DATE:30/03/2023 
DESCRIPTION:
SAMPLE INPUT:
SAMPLE OUTPUT:
DOC
# res=${#var} #length of string
# len=${#arr[@]} #length of array

if [ $# -eq 0 ]
then
    echo "Error : Please pass the arguments through command-line."
else
    arr=($@)
    len=${#arr[@]}
    for i in `seq 0 $((len-1))`
    do
        echo "Length of string (${arr[$i]}) - ${#arr[i]}"
    done
fi
        

