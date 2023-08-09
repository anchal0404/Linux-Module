#!/bin/bash
<<DOC
NAME::ANCHAL RATHORE
DATE: 
DESCRIPTION:
SAMPLE INPUT:
SAMPLE OUTPUT:
DOC
#cat /etc/passwd > data_base.txt
arr=(`cut -d":" -f1 /etc/passwd`)

len=${#arr[@]}

smallest=${arr[0]}
largest=${arr[0]}
for i in `seq 1 $((len-1))`
do
       
    if [[ ${#smallest} -lt ${#arr[i]} ]]
    then
        smallest=${arr[$i]}
        
    elif [[ ${#largest} -gt ${#arr[i]} ]]
    then
        largest=${arr[$i]}
       
    fi
done
echo "Longest user: $smallest"
echo "Shortest user: $largest"

    


