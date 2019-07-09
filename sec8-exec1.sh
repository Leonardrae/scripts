#!/bin/bash

RAND=$RANDOM

echo $RAND

logger -t exec1.sh -p user.info "$RAND"
