#!/bin/bash
<<DOC
NAME:ANCHAL RATHORE
DATE:07/04/2023
DESCRIPTION:Script to count the number if users with user IDs between given range.
SAMPLE INPUT:0 100
SAMPLE OUTPUT:Total count of user Id between 0 to 100 is: 3
DOC

arr=(`cat /etc/passwd | tr ":" " " | cut -d" " -f3`)
#echo ${arr[@]}
count=0

    if [ $# -eq 0 ]
    then
        for i in ${arr[@]}
        do
            if [[ $i -ge 500 && $i -le 10000 ]]
            then
                 count=$(($count+1))
            fi
        done
        echo "Total count of user ID between 500 to 10000 is : $count"
   
     elif [ $# -eq 2 ]
     then
             if [ $1 -lt $2 ]
             then
                 for i in ${arr[@]}
                 do
                     if [[ $i -ge $1 && $i -le $2 ]]
                     then
                          count=$(($count+1))
                     fi
                 done
                 echo "Total count of user ID between $1 to $2 is : $count"
             else
                 echo "Error : Invalid range.Please enter the valid range through CL."
             fi

      else
        echo "Error : Please pass 2 arguments through CL."
        echo "Usage : ./user_ids.sh 100 200"
      fi
   

