#!/bin/bash -x

ispresent=1
randomcheck=$((RANDOM%2))

if [ $ispresent -eq $randomcheck ]
then
	emprateperhr=20
	emphrs=8
	salary=$(($emprateperhr*$emphrs))
	echo "The salary is: " $salary
else
	salary=0
	echo "The salary is zero because employee is absent"
fi
