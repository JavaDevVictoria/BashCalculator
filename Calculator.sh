#!/bin/bash

# A simple calculator script.  When running the script, provide an operator (a for addition, s for subtraction, m for multiplication or d for division) and 2 numbers at the command prompt.

function add() {
	answer=$(($firstNumber + $secondNumber))
}

function subtract() {
	answer=$(($firstNumber - $secondNumber))
}

function multiply() {
	answer=$(($firstNumber * $secondNumber))
}

function divide() {
	answer=$(($firstNumber / $secondNumber))
}

if [ $# -lt 3 ] #if the number of arguments is less than 3, explain how the script should be used
then
	echo ""
	echo "Usage: Provide an operator (a for addition, s for subtraction, m for multiplication or d for division) and 2 numbers."
	echo ""
	exit 1
fi

# The last 2 command line parameters are the digits on which to perform the calculation
firstNumber=$2 
secondNumber=$3


# The first command line parameter is the operator for the sum
if [ $1 == "a" ] ; then
	add
elif [ $1 == "s" ] ; then
	subtract
elif [ $1 == "m" ] ; then
	multiply
elif [ $1 == "d" ] ; then
	divide
fi

echo "The answer is $answer"

