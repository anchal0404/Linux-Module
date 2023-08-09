#!/bin/bash
<<DOC
NAME::ANCHAL RATHORE
DATE: 
DESCRIPTION:
SAMPLE INPUT:
SAMPLE OUTPUT:
DOC

function display()
{
    if [ $# -eq 0 ]
    then
            echo "Error : Pass the arguments through command line."
            
    else
        arr=($@)
        echo ${arr[0]}
        if [ $# -gt 1 ]
        then
        display ${arr[@]:1}
        fi 
    fi
}
display $@

