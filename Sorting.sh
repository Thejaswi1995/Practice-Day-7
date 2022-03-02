#!/bin/bash -x

echo "enter maximum number"
read n
# taking input from user
echo "enter Numbers in array:"
for (( i = 0; i < $n; i++ ))
do
read nos[$i]
done
#printing the number before sorting
echo "Numbers in an array are:"
for (( i = 0; i < $n; i++ ))
do
echo ${nos[$i]}
done
# Now do the Sorting of numbers
for (( i = 0; i < $n ; i++ ))
do
for (( j = $i; j < $n; j++ ))
do
if [ ${nos[$i]} -gt ${nos[$j]} ]; then
t=${nos[$i]}
nos[$i]=${nos[$j]}
nos[$j]=$t
fi
done
done
# Printing the sorted number
echo -e "\nSorted Numbers "
for (( i=0; i <= $n; i++ ))
do
echo ${nos[$i]}
done
echo ${nos[@]}

min=${nos[0]}
max=${nos[$n-1]}

min2=${nos[1]}
max2=${nos[$n-2]}

echo " minimum no is " $min
echo " maximum no is " $max
echo " 2nd minimum no is " $min2
echo " 2nd maximum no is " $max2
