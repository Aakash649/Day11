#!/bin/bash -x


h=0
t=0
y=0

while [ $h -lt 21 ] && [ $t -lt 21 ]
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
	
done

if [ $h -gt $t ]
then
	echo "Head Won"
	echo "Head Count: " $h
	y=$(($h-$t))
	echo "Head won by count of: " $y
elif [ $h -eq $t ]
then
	echo "Both are equal"
	echo "Its a Tie"
else
	echo "Tail Won"
        echo "Tail Count: " $t
        y=$(($t-$h))
        echo "Tail won by count of: " $y
fi
