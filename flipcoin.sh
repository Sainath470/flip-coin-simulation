#!/bin/bash 
declare -A result
num=20
while [ $num -gt 0 ]
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
