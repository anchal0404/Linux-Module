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
    echo "Error : Please pass the name of the file-system through command line."
elif [ $# -gt 0 ]
then
    flag=0
    file_system=(`df | tr -s " " | cut -d" " -f1`)
  #  echo ${file_system[@]}

    len=${#file_system[@]}
    for i in `seq 1 $((len - 1))`
    do
        
        k=${file_system[$i]}
        
       
        if [ $1 = $k ]
        then
            flag=1
            available=(`df | tr -s " " | cut -d" " -f4`)
            use=(`df | tr -s " " | cut -d" " -f5`)
            mount=(`df | tr -s " " | cut -d" " -f6`)
            
            echo "File-system $k is mounted on ${mount[$i]} and it is having ${use[$i]} used space with ${available[$i]} KB free."
        exit
        fi
        
    done
    if [ $flag -eq 0 ]
    then
        echo "$1 is not mounted."
    fi
fi

