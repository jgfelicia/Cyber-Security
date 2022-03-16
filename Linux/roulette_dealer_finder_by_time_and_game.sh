#! /bin/bash
read -p "Enter Casino Game i.e BlackJack, Roulette or Texas_Hold :" Game
if  [ $Game = "BlackJack" ]
then
read -p 'Enter a Date(mmdd): ' DATE
read -p 'Enter a Time (hh:mm:ss) :' TIME
read -p 'Enter AM/PM :' user_time
awk '{print $1 " " $2 ":" $3 "  " $4 }' ${DATE}_Dealer_schedule | grep "$user_time" | grep "$TIME"
elif [ $Game = "Roulette" ]
then
read -p 'Enter a Date(mmdd): ' DATE
read -p 'Enter a Time (hh:mm:ss) :' TIME
read -p 'Enter AM/PM :' user_time
awk '{print $1 " " $2 ":" $5 "  " $6 }' ${DATE}_Dealer_schedule | grep "$user_time" | grep "$TIME"
elif [ $Game = "Texas_Hold" ]
then
read -p 'Enter a Date(mmdd): ' DATE
read -p 'Enter a Time (hh:mm:ss) :' TIME
read -p 'Enter AM/PM :' user_time
awk '{print $1 " " $2 ":" $7 "  " $8 }' ${DATE}_Dealer_schedule | grep "$user_time" | grep "$TIME"
fi
