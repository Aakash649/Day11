#!/bin/bash 


function Singlet(){
y=0
z=0
declare -A Dict

for (( i=1; i<=100; i++ ))
do
x=$(($((RANDOM % 2))+1))

	if [ $x -eq 1 ]
	then
		#Heads
		y=$(($y+1))
	else
		#Tails
		z=$(($z+1))
	fi
done


Dict[H]=$y
Dict[T]=$z

echo ${Dict[@]}
echo "Head Percentage: " ${Dict[H]}
echo "Tail Percentage: " ${Dict[T]}

}

function Doublet(){
y=0
z=0
declare -A DictD

for (( i=1; i<=100; i++ ))
do
x=$(($((RANDOM % 2))+1))
q=$(($((RANDOM % 2))+1))

	if [ $x -eq 1 ] && [ $q -eq 1 ]
	then
		#Double Heads"
		y=$(($y+1))
	elif [ $x -eq 1 ]&&[ $q -ne 1 ]
	then
		#Head Before Tail"
		a=$(($a+1))
	elif [ $x -ne 1 ]&&[ $q -eq 1 ]
	then
		 #Tail Before Head"
		b=$(($b+1))
	else
		 #Double Tails"
		z=$(($z+1))
	fi
done


DictD[HH]=$y
DictD[HT]=$a
DictD[TH]=$b
DictD[TT]=$z


for j in ${!DictD[@]}
do
	echo $j "="${DictD[$j]}
done
}

function Triplet(){
declare -A DictT
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
		#H H H"
		a=$(($a+1))
	elif [ $x -eq 1 ] && [ $q -eq 1 ] && [ $r -ne 1 ]
	then
		# H H T"
		b=$(($b+1))
	elif [ $x -eq 1 ]&&[ $q -ne 1 ]&&[ $r -eq 1 ]
	then
		#  H T H"
		c=$(($c+1))
	elif [ $x -ne 1 ]&&[ $q -eq 1 ]&&[ $r -eq 1 ]
	then
		#T H H"
		d=$(($d+1))
	elif [ $x -ne 1 ]&&[ $q -ne 1 ]&&[ $r -eq 1 ]
	then
		#T T H"
		e=$(($e+1))
	elif [ $x -eq 1 ]&&[ $q -ne 1 ]&&[ $r -ne 1 ]
	then
		#T H T"
		f=$(($f+1))
	elif [ $x -eq 1 ]&&[ $q -ne 1 ]&&[ $r -ne 1 ]
	then
		#H T T"
		g=$(($g+1))
	else
		# T T T"
		h=$(($h+1))
	fi
done


DictT[HHH]=$a
DictT[HHT]=$b
DictT[HTH]=$c
DictT[THH]=$d
DictT[TTH]=$e
DictT[THT]=$f
DictT[HTT]=$g
DictT[TTT]=$h


for k in ${!DictT[@]} 
do
	echo $k "=" ${DictT[$k]}
done
}



Singlet
echo
Doublet
echo
Triplet
