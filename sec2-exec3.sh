#!/bin/bash


# Store the output of the command "hostname" in a variable. 
ABCx=$(hostname)

#Display "This script is running on "_______." where "_______" is the output of the "hostname" command.
echo This script is running on ${ABCx} where ${ABCx} is the output of the "hostname" command.
