#!/bin/bash
isint='^-?[0-9]+$'
if [ -z "$1" ]; then
    echo "bb4 needs one integer as an argument"
    exit 1
elif [[ "$1" =~ $isint ]]; then
    echo "got integer"
else
    echo "Integer not provided"
    exit 2
fi

# printf '%*s\n' 50 '' | tr ' ' '*'
printf '* %.0s' {1..15}; printf '\n'

echo "       $1 persons           "
mynum=15
printf '* %.0s' $(seq 1 $mynum);printf '\n'

printf "Theres a base fee of \$40 and additionally \$15 per person \nThere is a 10 %% tall order discount for ten persons or more\n"
printf '%*s\n\n' 29 | tr ' ' '*'
full_price=$(($1*15+40))
disc_price=$(echo "scale=2; $full_price * 0.9" | bc)
#printf "full: $full_price\ndiscount price: $disc_price"

if (( "$1" >= 1 && "$1" < 10  )) ;then
    printf "The price for $1 persons is \$$full_price"
elif (( "$1" >= 10 && "$1" <= 50 ));then
    printf "The price for $1 persons is \$$disc_price"
elif (( "$1" > 50)); then
    printf "50 persons is the maximum\n"
    exit 0
fi

printf "\n"

printf "Discount applied: %s\n" "$([ $1 -ge 10 ] && echo 'Yes (10%)' || echo 'No')"
