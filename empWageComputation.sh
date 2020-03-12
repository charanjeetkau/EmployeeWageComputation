#!/bin/bash -x
R=$(($RANDOM%2))
if [[ $R -eq 0 ]]
then
			echo Employee Present
else
			echo Employee Absent
fi
printf "\n"

wage_per_hour=20
full_day_hour=8
daily_employee_wage=$(($wage_per_hour*$full_day_hour))
echo Daily Employee Wage': ' $daily_employee_wage
printf "\n"

part_time=$(($full_day_hour/2))
part_time_wage=$(($wage_per_hour*$part_time))
echo 'Part Time: '$part_time ' Hours'
echo 'Part Time Wage: '$part_time_wage
printf "\n"

echo 1. Full Day Working Hours
echo 2. Part Time Working Hours
read -p "Enter your choice (1 0r 2): " choice
workHours () {
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
}
workHours
echo Work hours' : ' $work_hours
printf "\n"

workingDaysPerMonth=20
one_month_wage=$(($daily_employee_wage*$workingDaysPerMonth))
echo Per Month wage is ' : '$one_month_wage
printf "\n"

total_work_hours=0
totalNumberOfDays=0
#counter1=0
#counter2=0
i=1
while [[ $totalNumberOfDays -lt 20 ]]
do
			((total_work_hours++))
			((totalNumberOfDays++))
			monthly_part_time_wage=$(($total_work_hours*$part_time_wage))
			echo "day $i Total part time wage is "$monthly_part_time_wage

			monthly_full_time_wage=$(($total_work_hours*$daily_employee_wage))
			echo "day $i Total full time wage is "$monthly_full_time_wage
                        ((i++))
done
printf "\n"






#			if [[ $monthly_full_time_wage%$daily_employee_wage -eq 0 ]]
#			then
#			((totalNumberOfDays++))
#			fi
#			TotalPartTimeWage[((counter1))]="$monthly_part_time_wage"
#			((counter1++))
#			TotalFullTimeWage[((counter2))]="$monthly_full_time_wage"
#			((counter2++))
#
#			echo "monthly_part_time_wage is "$monthly_part_time_wage
#			echo "monthly_full_time_wage is "$monthly_full_time_wage
#done
#printf "\n"

#echo "Daily part time wage (goes on addition) : " ${TotalPartTimeWage[@]}
#printf "\n"
#echo "Daily full time wage (goes on addition) : " ${TotalFullTimeWage[@]}
#printf "\n"

#randomFunction2 () {
#rdm=$(($RANDOM%2))
#if [[ $rdm -eq 0 ]]
#then
#x=$daily_employee_wage
#else
#x=$part_time_wage
#fi
#}
#count=0
#day=( [count]=0 )
#while [[ $count -le 19 ]]
#do
#randomFunction2
#((count++))
#day[count]=$x
#done
#echo "Day Number : Daily Employee Wage (Part time or Full time)"
#echo ${!day[@]} ' : ' ${day[@]}
#printf "\n"
