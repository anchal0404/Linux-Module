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
    echo "Please pass the arguments through CL."
    echo "Usage:./operator_dependent.sh 2345+"
else
    var=$1
    opr=${var: -1}
    k=${#var}
    res=${var:0:1}

    case $opr in
        +)

            for i in `seq 1 $((k-2))`
            do
               res=`echo "$res + ${var:$i:1}" | bc`
            done
            echo "Sum of digits = $res"
            ;;

        -) 
            for i in `seq 1 $((k-2))`
            do
               res=`echo "$res - ${var:$i:1}" | bc`
            done
            echo "Substracion of digits = $res"
            ;;
        x)
            for i in `seq 1 $((k-2))`
            do
               res=`echo "$res * ${var:$i:1}" | bc`
            done
            echo "Multiplication of digits = $res"
            ;;
        /)
            for i in `seq 1 $((k-2))`
            do
                res=`echo "scale=2 ;$res / ${var:$i:1}" | bc`
            done
            echo "Division of digits = $res"
            ;;
         *)
             echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)"

    esac
fi

