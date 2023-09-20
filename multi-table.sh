#!/bin/sh

if [ "$#" -ne 2 ]
then
	echo "Invalid input"
	exit 1
fi

num1=$1
num2=$2

if [ $num1 -le 0 -o $num2 -le 0 ]
then
	echo "Input must be greater than 0"
	exit 1
fi

for i in $(seq 1 $num1)
do
	for j in $(seq 1 $num2)
	do
		result=$((i * j))
		printf "%d*%d=%d	" $i $j $result
	done
	echo
done

exit 0
