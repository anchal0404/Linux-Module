#!/bin/bash
<<DOC
NAME::ANCHAL RATHORE
DATE: 
DESCRIPTION:
SAMPLE INPUT:
SAMPLE OUTPUT:
DOC
total_count=0
arr=(`echo $PATH | tr ":" " " `)
len=${#arr[@]}
for i in `seq 0 $((len-1))`
do
    if [ -d ${arr[i]} ]
    then
        count=0
        cd ${arr[i]}
        arr1=(`ls`)
        length=${#arr1[@]}
        for j in `seq 0 $((length-1))`
        do
            
            if [ -x ${arr1[j]} ]
            then
                count=$(($count+1))

            fi
        done
        echo "Current dir: ${arr[i]}"
        echo "current count: $count"
        total_count=$(($total_count+$count))
     else
         echo "Directory ${arr[i]} is not accessible"
    fi

done
echo "Total - $total_count"
