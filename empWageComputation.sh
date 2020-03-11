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
