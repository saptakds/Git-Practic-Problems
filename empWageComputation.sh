#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
randomVar=$((1+$RANDOM%2))
if [ $randomVar -eq 1 ]
then
	echo "Employee: Present"
else
	echo "Employee: Absent"
fi
