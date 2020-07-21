#!/bin/bash -x
y=0
z=0
declare -A Dict

for (( i=1; i<=100; i++ ))
do
x=$(($((RANDOM % 2))+1))

	if [ $x -eq 1 ]
	then
		echo "Heads"
		y=$(($y+1))
	else
		echo "Tails"
		z=$(($z+1))
	fi
done


Dict[H]=$y
Dict[T]=$z

echo ${Dict[@]}
echo "Head Percentage: " ${Dict[H]}
echo "Tail Percentage: " ${Dict[T]}
