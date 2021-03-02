#!/bin/bash 

num=50
result1=0
result2=0
while [[ $num -gt 0 && $result1 -lt 21 && $result2 -lt 21 ]]
do
((num--))
flipcoin=$((RANDOM%2))
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
done
echo "head wins" ${a[@]}
echo "Total head wins" $result1
echo
echo "Tail wins" ${b[@]}
echo "Total Tail wins" $result2
if [ $result1 -gt $result2 ]
then
	 echo "Head wins 21 times"
		diff=$(($result1-$result2))
		echo "By difference of " $diff
else
		echo "Tail wins 21 times"
		diff2=$(($result2-$result1))
		echo "By difference of " $diff2
fi

