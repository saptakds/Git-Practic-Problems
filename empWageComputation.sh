#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
randomVar=$((1+$RANDOM%2))
attend=0
if [ $randomVar -eq 1 ]
then
	attend=1
	echo "Employee: Present"
else
	attend=0
	echo "Employee: Absent"
fi
wageRate=20
fullDayHour=8
dailyWage=$(($wageRate*$fullDayHour*$attend))
echo "Daily Employee Wage: $dailyWage"
