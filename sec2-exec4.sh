#!/bin/bash

# Write a shell script to check to see if the file "/etc/shadow" exists.If it does exist, display "Shadow passwords are enabled." Next, check to see if you can write to the file.If you can, display "You have permissions to edit /etc/shadow." If you cannot, display "You do NOT have permissions to edit /etc/shadow."

[ -e ~/labs/mesos-labs ] 

if [ $? -eq 0 ]
then
	echo "Mesos Lab exist."
fi

[ -w ~/labs/mesos-labs ]

if [ $? -eq 0 ]
then
	echo 'You have permissions to edit ~/labs/mesos-labs'
else
	echo 'You do NOT have permissions to edit ~/labs/mesos-labs' 
fi
