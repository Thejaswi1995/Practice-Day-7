#!/bin/bash/ -x

b=0
i=0

function rep()
{
while [[ $a -gt 0 ]]
do
        reminder=`expr $a % 10`
	reverse=`expr $reverse \* 10 + $reminder`
	a=`expr $a / 10`
done

if [[ $p -eq $reverse && $p -gt 10 ]]
then 
      ((b++))
      rep[$b]=$p
      echo "$p is repeated twice"
else
      echo "$p is not repeated twice"
fi
}
while [[ i -lt 100 ]]
do
	((i++))
	a=$i
	p=$i
	reverse=0
        rep
done

echo "The repeated numbers from 1 to 100 are:" ${rep[@]}
