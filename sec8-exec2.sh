#!/bin/bash

TIMES=(1 2 3)

for NUM_TIMES in ${TIMES[@]}
do
        RAND=$RANDOM
        echo ${RAND}
        logger -i -t "randomly" -p user.info "$RAND"
done
