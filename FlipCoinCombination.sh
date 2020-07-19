#!/bin/bash -x

x=$(($((RANDOM % 2))+1))

if [ $x -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi
