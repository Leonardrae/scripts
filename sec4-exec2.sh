#!/bin/bash

function file_count() {
	for DIR in $@
	do
	echo "$DIR:"
	ls $DIR | wc -l
	done
}

file_count /etc /var /usr/bin
