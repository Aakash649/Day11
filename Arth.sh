#!/bin/bash 


echo "Enter the 3 numbers"
read -p "Enter a: " a;
read -p "Enter b: " b;
read -p "Enter c: " c;

declare -A Arth

y=$(($a + $b * $c))
a=$(($a * $b + $c))
b=$(($c + $a / $b))
c=$(($a % $b + $c))



Arth[i]=$y
Arth[j]=$a
Arth[k]=$b
Arth[l]=$c


array[1]=${Arth[i]}
array[2]=${Arth[j]}
array[3]=${Arth[k]}
array[4]=${Arth[l]}

for (( i=1;i<=4;i++))
do
	for(( j=$(($i+1)); j<=4; j++ ))
	do
		if [ ${array[$i]} -gt ${array[$j]} ]
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp

		fi
	done

done
echo ${array[@]}
for (( i=1;i<=4;i++))
do
        for(( j=$(($i+1)); j<=4; j++ ))
        do
                if [ ${array[$i]} -lt ${array[$j]} ]
                then
                        temp=${array[$i]}
                        array[$i]=${array[$j]}
                        array[$j]=$temp

                fi
        done

done
echo ${array[@]}
