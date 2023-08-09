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
    echo "Please pass the file name through command line."
elif [ $# -gt 0 ]
then
    file_name=$1
    if [ -f $file_name ]
    then
        if [ -s "${file_name}" ]
        then
            echo "1 - Lower to upper"
            echo "2 - Upper to lower"
            read -p "Please select option :" choice
            case $choice in
                1)
                    tr '[:lower:]' '[:upper:]' <$file_name
                    ;;
                2)
                    tr '[:upper:]' '[:lower:]' <$file_name
                    ;;
            esac
        else
            echo "Error: No contents inside the file."
        fi
    exit
    fi
else
    echo "Error: Please pass the file name through command line."
fi
