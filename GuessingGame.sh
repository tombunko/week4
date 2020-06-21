#!/bin/bash

# This is a guessing gae program.  
# The program randomly generates a number betweeen 1 & 100
# You are to guess the number

# The script tells you if you are high, or low, and continues till you guess the number

# defined variables
random_no=$(( $RANDOM % 100 + 1 ))
echo $random_no

repeat=0

while [ $repeat -eq 0 ]
do
	read -p "Enter your guess (between 1 and 100 )" User_Guess
	if [ $User_Guess -eq $random_no ]; then
		echo "Woo-Hoo, you got it in $s tries"
		repeat=1
	elif [ $User_Guess -gt $random_no ]; then
		echo "too high, try again"
		(( s++ ))
	elif [ $User_Guess -lt $random_no ]; then
		echo "too low, try again"
		(( s++ ))
	fi
done
