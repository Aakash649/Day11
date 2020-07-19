#!/bin/bash -x

x=$(($((RANDOM % 2))+1))

if [ $x -eq 1 ]
then
	echo  "Head"
else
	echo "Tail"
fi

