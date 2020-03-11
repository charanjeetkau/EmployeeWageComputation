#!/bin/bash -x
R=$(($RANDOM%2))
if [[ $R -eq 0 ]]
then
			echo Present
else
			echo Absent
fi
