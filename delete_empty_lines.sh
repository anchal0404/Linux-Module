#!/bin/bash
<<DOC
NAME::ANCHAL RATHORE
DATE: 
DESCRIPTION:
SAMPLE INPUT:
SAMPLE OUTPUT:
DOC

if [ $# -eq 0 ]
then
    echo "Error : Please pass the file name through command line."
elif [ -f $1 ]
then
    sed -i '/^$/d' "$1"
    echo "Empty lines are deleted"
    cat $1
fi

