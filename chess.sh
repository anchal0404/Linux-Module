#!/bin/bash
<<DOC
NAME::ANCHAL RATHORE
DATE: 
DESCRIPTION:
SAMPLE INPUT:
SAMPLE OUTPUT:
DOC
sum=0
for i in `seq 8`
do
    for j in `seq 8`
    do
        sum=$((i + j))
        if [ $((sum%2)) -eq 0 ]
        then
            echo -e -n "\e[40m" " "
        else
            echo -e -n "\e[47m" " "
        fi
    done
echo -e -n "\e[0m" " "
echo
done

