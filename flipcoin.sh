#!/bin/bash -x

flipcoin=$((RANDOM%2))

if [ $flipcoin -eq 1 ]
then
	echo " It's Heads "
else
	echo " It's Tails "
fi
