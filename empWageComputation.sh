#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
randomVar=$((1+$RANDOM%2))
dailyWage=0
partTimeWage=0
wageRate=20
fullDayHour=8
partTimeHour=8
case $randomVar in
	1)
		echo "Employee: Present"
		dailyWage=$(($wageRate*$fullDayHour))
		partTimeWage=$(($partTimeHour*$wageRate))
	;;
	2)
		echo "Employee: Absent"
	;;
esac
echo "Daily Employee Wage: $dailyWage"
echo "Parttime wage: $partTimeWage"
