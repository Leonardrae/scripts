#!/bin/bash

NUM_LINE=1
read -p "How many lines would you like to display from the /etc/passwd file? " LINE

while read DATA
do
	if [ ${NUM_LINE} -le ${LINE} ]
	then
		echo "${NUM_LINE}: ${DATA}"
		((NUM_LINE++))
		continue
	fi
done < /etc/passwd

