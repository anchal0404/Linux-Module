#!/bin/bash
<<DOC
NAME:ANCHAL RATHORE
DATE: 
DESCRIPTION:
SAMPLE INPUT:
SAMPLE OUTPUT:
DOC
if [ $# -gt 0 ]
then
    arr=($*)
  #  echo ${arr[@]}
    len=${#arr[@]}
    for i in `seq 0 $((len-1))`
    do
        if [ -d ${arr[$i]} ]
        then
            cd ${arr[$i]}
            pwd
            echo *
        else
            echo "ouput_ls.sh:Cannot access 'Test' :No such a file or directory."
         fi
    done
else
    path=(`pwd`)
    echo ${path[@]}
    cd ${path[@]}
    echo *
fi


