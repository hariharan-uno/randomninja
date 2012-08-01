#!/bin/bash

p=02002012
finmonth=12
findate=30
zero=0
z=10
q=4
e=$(( $RANDOM % 10 ));

for (( month=8; $month<=$finmonth; month++ ))
do
    for (( date=01; $date<=$findate; date++ ))
    do
	if [ $date -lt $z ]
	then
	    if [ $month -lt $z ]
	    then
		combined=${zero}$month${zero}$date$p
		date ${combined}
	    else
		combined=$month${zero}$date$p
		date ${combined}
	    fi
	else
	    if [ $month -lt $z ]
	    then
		combined=${zero}$month$date$p
		date ${combined}
	    else
		combined=$month$date$p
		date ${combined}
	    fi
	fi
	r=$(( $RANDOM % 7 ));
	if [ $e -gt $q ]
	then
	for (( i=0; i<=${r}; i++ ))
	do
	    echo "This is:" `sh ./random_word.sh` >> random_pre.txt;  git add -A; git commit -m "A random commit message"
	done
	fi
	e=$(( $RANDOM % 10 ));
    done
done
