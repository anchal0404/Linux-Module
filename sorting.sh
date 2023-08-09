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
    echo "Error : Please pass the argument through command line."
    echo "Usage : ./sorting -a/-d 4 23 5 6 3"
elif [ $# -gt 0 ]
then
    arr=($@)
    len=${#arr[@]}
    case ${arr[0]} in
        -a)
            for i in `seq 1 $((len-1))`
            do
                for j in `seq 1 $((len-i-1))`
                do
                    if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
                    then
                        temp=${arr[j]}
                        arr[j]=${arr[$((j+1))]}
                        arr[$((j+1))]=$temp
                    fi
                done
           done
           echo "Ascending order of array is ${arr[@]:1}"
            ;;
        -d)
            for i in `seq 1 $((len-1))`
            do
                for j in `seq 1 $((len-i-1))`
                do
                    if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
                    then
                        temp=${arr[j]}
                        arr[j]=${arr[$((j+1))]}
                        arr[$((j+1))]=$temp
                    fi
                done
            done
            echo "Descending order of array is ${arr[@]:1}"
            ;;
        *)
            echo "Error : Please pass the choice."
            echo "Usage : ./sorting -a/-d 4 23 5 6 3."
    esac
fi


