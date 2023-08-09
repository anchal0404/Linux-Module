#!/bin/bash
<<DOC
NAME::ANCHAL RATHORE
DATE: 
DESCRIPTION:
SAMPLE INPUT:
SAMPLE OUTPUT:
DOC
arr=(`ls`)
len=${#arr[*]}
for i in `seq 0 $(($len - 1))`
do
    k=${arr[$i]}
    if [ -f $k ]
    then
        old_name=$k  #{arr[i]}
        new_name=`echo "$old_name" | tr '[:upper:]' '[:lower:]'`
        if [ $old_name != $new_name ]
        then
            mv $old_name $new_name
            exit
        fi
    elif [ -d $k ]
    then
        old_name=$k
        new_name=`echo "$old_name" | tr '[:lower:]' '[:upper:]'`
        if [ $old_name != $new_name ]
        then
            mv -T $old_name $new_name
            exit
        fi
    fi
done
