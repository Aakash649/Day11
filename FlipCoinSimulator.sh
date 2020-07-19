#!/bin/bash -x


read -p "Enter the number of times to run the simulator: " n;


h=0
t=0
y=0

while [ $y -lt $n ]
do
	x=$(($((RANDOM % 2))+1))

	if [ $x -eq 1 ]
	then
		echo  "Head"
		h=$(($h+1))
	else
		echo "Tail"
		t=$(($t+1))
	fi
	y=$(($y+1))
done

echo "Number of Head Count: " $h;
echo "Number of Tail Count: " $t;
