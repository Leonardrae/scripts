#!/bin/bash

[ -f "$1" ] && echo "File ${1} is a file, script will exit with code 0" && exit 0 
[ -d "$1" ] && echo "File ${1} is a directory, script will exit with code 1" && exit 1
[ -a "$1" ] || echo "File ${1} Does Not Exist, script will exit with code 2" && exit 2
