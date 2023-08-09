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
    echo "No command line argument has passed."
elif [ $# -eq 3 ]
then
    case $2 in
        +)  res=`echo "$1 + $3"| bc`
            echo "$1 + $3 = $res"
            ;;
        x)  res=`echo "$1 * $3"| bc`
            echo "$res"
            ;;
        /)  res=`echo "scale=2 ; $1 / $3"| bc`
            echo "$res"
            ;;
        -)  res=`echo "$1 - $3"| bc`
            echo "$res"
            ;;
        *)  echo "Please pass the argument through command line."
            echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
            ;;
    esac
            
else
    echo "Please pass 3 arguments."
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
fi


