#!/bin/bash -x

for((i=0;i<=10;i++))
do
	value=$((100+((RANDOM%900))))
	nos[$i]=$value
done

min=${nos[0]}
max=${nos[0]}

for((i=0;i<=10;i++))
do
	if [ ${nos[$i]} -lt $min ];
	then
		min=${nos[$i]}

	elif [ ${nos[$i]} -gt $max ];
	then
		max=${nos[$i]}
	fi
done

large=$min
small=$max
min2=${nos[0]}
max2=${nos[0]}

for((i=0;i<=10;i++))
do
	if [[ (${nos[$i]} -lt $min2) && (${nos[$i]} -gt $large) ]];
	then
		min2=${nos[$i]}

	elif [[ (${nos[$i]} -gt $max2) && (${nos[$i]} -lt $small) ]];
	then
		max2=${nos[$i]}
	fi
done
echo "The array elements are" ${nos[@]}
echo " The Greatest no is" $max
echo " The Smallest no is" $min
echo " The 2nd Greatest no is" $max2
echo " The 2nd Smallest no is" $min2
