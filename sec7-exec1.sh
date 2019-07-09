#!/bin/bash

read -p "Please type your answer: " ANSWER

case ${ANSWER} in

	[yY] | [yY][eE][sS])
		/tmp/sleep­walking­server.pid &
		;;
	[nN] | [nN][oO])
		kill $(cat /tmp/sleep­walking­server.pid)
		;;
	*)
		echo "Invalid input!"
esac
