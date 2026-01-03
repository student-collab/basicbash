#!/bin/bash

#aritmetiske utregninger
A=3
B=$((100 * $A + 5)) # 305

echo $B "((...)) ber om utregning '+' '-' '*' og '/' i tileggg til modulo '%' og '**' opphøyd i  "
echo

#substring
STRING="this is a string"
SUBSTRING="hat"
expr index "$STRING" "$SUBSTRING" # 1 - første treff "t" i "this (...)"

# https://ss64.com/bash/expr.html


STRING="this is a string"
POS=1
LEN=3
echo ${STRING:$POS:$LEN}   # his
echo ${STRING:$POS}   # his is a string

echo $(expr 5 '*' 5)
echo $((5 * 5))

isInt='^-?[0-9]+$'

if [ -n "$1" ]; then
    echo "First argument is $1"

    if [[ $1 =~ $isInt ]]; then
       echo "It is a number"
    fi
else
    echo "No argument passed"
fi

#Added to see GIT in action
