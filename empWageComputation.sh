#!/bin/bash -x
R=$(($RANDOM%2))
if [[ $R -eq 0 ]]
then
			echo Employee Present
else
			echo Employee Absent
fi

wage_per_hour=20
full_day_hour=8
daily_employee_wage=$(($wage_per_hour*$full_day_hour))
echo Daily Employee Wage': ' $daily_employee_wage

part_time=$(($full_day_hour/2))
part_time_wage=$(($wage_per_hour*$part_time))
echo 'Part Time: '$part_time ' Hours'
echo 'Part Time Wage: '$part_time_wage

echo 1. Full Day Working Hours
echo 2. Part Time Working Hours
read -p "Enter your choice (1 0r 2): " choice
case $choice in
         '1')
			work_hours=$full_day_hour
			;;
			'2')
			work_hours=$part_time
			;;
			*)
			work_hours=0
			;;
esac
echo Work hours' : ' $work_hours

workingDaysPerMonth=20
one_month_wage=$(($daily_employee_wage*$workingDaysPerMonth))
echo Per Month wage is ' : '$one_month_wage
