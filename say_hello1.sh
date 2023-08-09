#!/bin/bash
<<DOC
NAME::ANCHAL RATHORE
DATE: 
DESCRIPTION:
SAMPLE INPUT:
SAMPLE OUTPUT:
DOC
user=(`whoami`)
current_hr=(`date | tr -s " " | cut -d " " -f4 | cut -d ":" -f1`)
clock=(`date | tr -s " " | cut -d " " -f4`)
day=(`date | tr -s " " | cut -d " " -f1`)
date=(`date | tr -s " " | cut -d " " -f3`)
month=(`date | tr -s " " | cut -d " " -f2`)
year=(`date | tr -s " " | cut -d " " -f6`)

if [ $current_hr -ge 5 ] && [ $current_hr -lt 12 ]
then
    greet=`echo "Good Morning"`
    call=`echo "AM"`

elif [ $current_hr -ge 12 ] && [ $current_hr -lt 14 ]
then
    greet=`echo "Good Noon"`
    call=`echo "AM"`
elif [ $current_hr -ge 14 ] && [ $current_hr -lt 17 ]
then
    greet=`echo "Good Afternoon"`
    call=`echo "PM"`
elif [ $current_hr -ge 17 ] && [ $current_hr -lt 21 ]
then
    greet=`echo "Good Evening"`
    call=`echo "PM"`
else
    greet=`echo "Good Night"`
    call=`echo "AM"`
fi

echo "$greet Aashi, Have nice day!"
echo "This is $day $date in $month of $year ($clock) $call"
