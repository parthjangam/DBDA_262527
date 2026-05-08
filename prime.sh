#!/bin/bash

read -p "Enter a number: " n 
f=1

for (($i = 4; i<n; i+=1))
do
	if [ ($(n) % $(i) | bc) -eq 0]
	then 
		$(flag)=0
	fi
done

if [ [$(n) in 1 2 3] || [$(flag) -eq 1 ]]
then
	echo "prime"
else
	echo "not prime"

fi
