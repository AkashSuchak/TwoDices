#! /bin/bash 

#Author : Akash Suchak
#rolling 2 dices at a time. 
#Count the number of rolles and sum of rolls till double 6 occurs. (Both the dices are unbiased 6 faced)

countRolls=0
sumRolls1=0
sumRolls2=0


while (true)
do
	roll1=$((RANDOM%6 +1))
	roll2=$((RANDOM%6 +1))

	countRolls=$(($countRolls + 1))
	sumRolls1=$(($sumRolls1 + $roll1))
	sumRolls2=$(($sumRolls1 + $roll2))
	if [ $roll1 -eq 6 -a $roll2 -eq 6 ]
	then
		break
	fi
done
echo "Count of Rolls : " $countRolls
echo "Sum of Dice1 : " $sumRolls1
echo "Sum of Dice2 : " $sumRolls2
