#! /bin/bash

#Author : Akash Suchak
#Generate a four digit number till you find a prime number. 
#Please use RANDOM to genrerate 4 digit number and count the numbers for generated numbers too while doing so

#varibles
i=2
count=0

#Loop till get Desired output
while (true)
do
	number=$((RANDOM%9999 + 1 ))
	#echo "Generated Number : " $number

	count=$(($count + 1))

	#Check For Prime Number
	check=$(("$number" % "$i"))
	if [ "$check" -eq 0 ]; then
		echo "$number is prime"
		break
	fi
done
echo "Count : " $count
