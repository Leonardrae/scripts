#!/bin/bash

FILES=$(ls sec${1}*.sh)
SECTION=$1

for FILE in $FILES
do
	echo "Copying files $FILE to ~/labs/udemy-bash/"
	cp /Users/leonardc/script/${FILE} ~/labs/udemy-bash/
done
