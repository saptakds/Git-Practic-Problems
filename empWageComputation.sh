#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
hours=0
days=0
counter=1
monthlyWage=0
wageRate=20
fullDayHour=8
workingDaysPerMonth=20
while [ $hours -le 100 -o $days -le $workingDaysPerMonth -a $counter -le 30 ]
do
	present=$((1+$RANDOM%2))
	case $present in
    1)
        echo "Day#$counter: Present"
        monthlyWage=$(($monthlyWage+$(($wageRate*$fullDayHour))))
		((days++))
		hours=$(($hours+$fullDayHour))
    	;;
    2)
        echo "Day#$counter: Absent"
    	;;
	esac
	((counter++))
done
function getWorkHours(){
	echo $hours
}
echo "Monthly wage: $monthlyWage"
workHours=(`getWorkHours`)
echo "Work hours: $workHours"
