#!/bin/bash -x
y=0
z=0
declare -A Dict

for (( i=1; i<=100; i++ ))
do
x=$(($((RANDOM % 2))+1))
q=$(($((RANDOM % 2))+1))

	if [ $x -eq 1 ] && [ $q -eq 1 ]
	then
		echo "Double Heads"
		y=$(($y+1))
	elif [ $x -eq 1 ]&&[ $q -ne 1 ]
	then
		echo "Head Before Tail"
		a=$(($a+1))
	elif [ $x -ne 1 ]&&[ $q -eq 1 ]
	then
		echo "Tail Before Head"
		b=$(($b+1))
	else
		echo "Double Tails"
		z=$(($z+1))
	fi
done


Dict[HH]=$y
Dict[HT]=$a
Dict[TH]=$b
Dict[TT]=$z

echo ${Dict[@]}
echo "Double Head Percentage: " ${Dict[HH]}
echo "Head Before Tail Percentage: " ${Dict[HT]}
echo "Tail Before Head Percentage: " ${Dict[TH]}
echo "Double Tail Percentage: " ${Dict[TT]}
