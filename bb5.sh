#!/bin/bash                                   
asterisk_line=20
printf "* %.0s" $(seq 1 $asterisk_line )
printf  "\n*%*s Genies superficial offers!%*s*\n" 5 " " 5 " "
printf "* %.0s" $(seq 1 $asterisk_line )
printf "\n\nMake a choice:\n1) Great power\n\n2) Unimaginable wealth\n\n3) Super intelligence\n\n4) Ability to convince\n\n5) A continuous feeling of happiness and contempt\n\nYour pick?\n:"

choice=0
while [[ $choice == 0 ]]; do
  read -s -n 1 choice
  if ! [[ $choice =~ ^[0-9]+$ ]]; then
    echo "Invalid input: Need number 1..5"
    choice=0
    continue
  elif [[  $choice -lt 1 || $choice -gt 5 ]]; then
      echo "Need number between 1 and 5"
      choice=0
  fi
done

case $choice in
    1) printf "You chose power ...\nWith great power comes great responsibility.\nBy finding areas in which you can make a difference\nand becoming more indifferent about  all which is out of range\nyou will realize yo already are quite powerful\n\n"
       ;;
    2) printf "You chose wealth ...\nBalance in life, peace of mind, attention to beauty\nand the kindness within are s more important than the fleeting\n feeling of  hapyness of wealth\n"
       ;;
    3) printf "You chose intelligence! Abra Kadabara ----\n you are hereby declared one of the most\n intelligent species on earth\n may it cause you to realize your goals may be achieved\nthrough continuous work\n"
       ;;
    4) printf "You chose persuasiveness ...\nTo convince others one must believe in onself and be able to see\n See the perspective of others and\nUse the insight to adapt your effort\n"
       ;;
    5) printf "You chose contentness ...\nWhat are feelings if not a result of your thoughts?\nIf you could control your thoughts you would be able to feel good all of the time!\nYour thoughts are affected by your energylevel meaning you would need\nto take care of your body's need for safety, hygiene, food, rest and sleep.\n Then you realize that the feeling of contentment and hapyness is as fleeting as a good nights sleep."
       ;;
 esac
