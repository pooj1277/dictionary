#!/bin/bash
count=100
c=100
declare -A FlipCoin
RollDice[1]=""
RollDice[2]=""
RollDice[3]=""
RollDice[4]=""
RollDice[5]=""
RollDice[6]=""


one=0
two=0
three=0
four=0
five=0
six=0


while [ $count != 0 ]
do
	result=$(($(($RANDOM%10))%6))
	if [ $result -eq 0 ]; then
		RollDice[1]=1
		((one++))
		echo "1"
	elif [ $result -eq 1 ]; then
		RollDice[2]=2	
		((two++))
		echo "2"
	elif [ $result -eq 2 ]; then
                RollDice[3]=3
                ((three++))
                echo "3"
	elif [ $result -eq 3 ]; then
                RollDice[4]=4
                ((four++))
                echo "4"
	elif [ $result -eq 4 ]; then
                RollDice[5]=5
                ((five++))
                echo "5"
        elif [ $result -eq 5 ]; then
                RollDice[6]=6
                ((six++))
                echo "6"
	fi
((count--))
done
echo ${RollDice[@]}
echo "dice 1 : $one"
echo "dice 2 : $two"
echo "dice 3 : $three"
echo "dice 4 : $four"
echo "dice 5 : $five"
echo "dice 6 : $six"

