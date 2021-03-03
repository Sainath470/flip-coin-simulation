#!/bin/bash 
num=50
result1=0
result2=0
function flipping()
{
diff=0
diff2=0
num=$1
result1=$2
result2=$3
local max=21
while [[ $num -gt 0 && $result1 -lt $max && $result2 -lt $max ]]
do
((num--))
flipcoin=$((1+RANDOM%2))
if [ $flipcoin -eq 1 ]
then
	echo " It's Heads "
	result1=$((result1+1))
	a[result]=$((result+1))
	((result++))
else
	echo " It's Tails "
	result2=$((result2+1))
	b[result]=$((result+1))
	((result++))
fi
if [ $result1 -gt $result2 ]
then
      diff=$(($result1-$result2))
else
      diff2=$(($result2-$result1))
fi
if [ $diff -eq 2 ]
then
		echo "head wins" $result1 "times" "by difference" $diff
elif [ $diff2 -eq 2 ]
then
		echo "Tail wins" $result2 "times" "by difference" $diff2
else
	((max++))
	((num++))
fi
done
}

flipping $num $result1 $result2


