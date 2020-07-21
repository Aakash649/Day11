#!/bin/bash -x

declare -A Dict
a=0
b=0
c=0
d=0
e=0
f=0
g=0
h=0

for (( i=1; i<=100; i++ ))
do
x=$(($((RANDOM % 2))+1))
q=$(($((RANDOM % 2))+1))
r=$(($((RANDOM % 2))+1))



	if [ $x -eq 1 ] && [ $q -eq 1 ] && [ $r -eq 1 ]
	then
		echo "H H H"
		a=$(($a+1))
	elif [ $x -eq 1 ] && [ $q -eq 1 ] && [ $r -ne 1 ]
	then
		echo "H H T"
		b=$(($b+1))
	elif [ $x -eq 1 ]&&[ $q -ne 1 ]&&[ $r -eq 1 ]
	then
		echo " H T H"
		c=$(($c+1))
	elif [ $x -ne 1 ]&&[ $q -eq 1 ]&&[ $r -eq 1 ]
	then
		echo "T H H"
		d=$(($d+1))
	elif [ $x -ne 1 ]&&[ $q -ne 1 ]&&[ $r -eq 1 ]
	then
		echo "T T H"
		e=$(($e+1))
	elif [ $x -eq 1 ]&&[ $q -ne 1 ]&&[ $r -ne 1 ]
	then
		echo "T H T"
		f=$(($f+1))
	elif [ $x -eq 1 ]&&[ $q -ne 1 ]&&[ $r -ne 1 ]
	then
		echo "H T T"
		g=$(($g+1))
	else
		echo "T T T"
		h=$(($h+1))
	fi
done


Dict[HHH]=$a
Dict[HHT]=$b
Dict[HTH]=$c
Dict[THH]=$d
Dict[TTH]=$e
Dict[THT]=$f
Dict[HTT]=$g
Dict[TTT]=$h

z=${#Dict[@]}

for (( i=$HHH; i<=$z; i++ ))
do
	${!Dict[i]}"="${Dict[i]}
done
