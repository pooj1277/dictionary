#! /bin/bash

#Roll a dice using bash
declare -A dice
dice[1]="1"
dice[2]="2"
dice[3]="3"
dice[4]="4"
dice[5]="5"
dice[6]="6"
while ((counter[*] -eq 10 ));
do
	echo "You rolled a..."
	x = $(($RANDOM % 6 + 1))
	echo $x
	if (( x -eq 1 ));
	then
	counter[1]++
	echo $counter[1]
	elif (( x -eq 2 ));
	then
	counter[2]++
	echo $counter[2]
	elif (( x -eq 3 ));
        then
        counter[3]++
	echo $counter[3]
        elif (( x -eq 4 ));
        then
        counter[4]++
	echo $counter[4]
	elif (( x -eq 5 ));
        then
        counter[5]++
	echo $counter[5]
        elif (( x -eq 6 ));
        then
        counter[6]++
	echo $counter[6]
	else
	echo "redo"
	fi
done

