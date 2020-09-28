#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
hours=0
days=0
counter=1
monthlyWage=0
wageRate=20
fullDayHour=8
workingDaysPerMonth=20
dailyWage=$(($wageRate*$fullDayHour))
daysArr=()
dailyWages=()
index=0
while [ $hours -le 100 -o $days -le $workingDaysPerMonth -a $counter -le 30 ]
do
	present=$((1+$RANDOM%2))
	case $present in
    1)
        echo "Day#$counter: Present"
        monthlyWage=$(($monthlyWage+$dailyWage))
		((days++))
		hours=$(($hours+$fullDayHour))
		daysArr[((index))]=$counter
		dailyWages[((index))]=$dailyWage
		((index++))
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
for (( i=0 ; i<${#daysArr[@]} ; i++ ))
do
	echo "Day#: ${daysArr[$i]}"
	echo "Wage: ${dailyWages[$i]}"
done
