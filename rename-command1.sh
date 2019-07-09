#!/bin/bash

FILE=$(ls sec1-*.sh)
NUM=1

for FILES in ${FILE}
do
	cp ${FILES} sec2-exec${NUM}.sh
	let NUM++
done 
