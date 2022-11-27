#!/bin/bash -x

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHr=20
numOfWorkingDays=20

for (( day=1; day<=$numOfWorkingDays; day++))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
				$isPartTime)
					empHrs=4
				;;
				$isFullTime)
					empHrs=8
				;;
				*)
					empHrs=0
				;;
	esac
	salary=$(($empRatePerHr*$empHrs))
	totalSalary=$(($totalSalary+$salary))
done

echo "Total monthly salary is: " $totalSalary
