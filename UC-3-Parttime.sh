#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$((RANDOM%3))

if [ $isFullTime -eq $randomCheck ]
then
	emphrs=8
	echo "Full time employee"
elif [ $isPartTime -eq $randomCheck ]
then
	emphrs=4
	echo "Parttime Employee"
else
	emphrs=0
	echo "Employee is absent"
fi

salary=$(($emphrs*$empRatePerHr))
echo "Total daily salary is: " $salary

