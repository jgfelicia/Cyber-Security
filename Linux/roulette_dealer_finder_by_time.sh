#! /bin/bash
read -p 'Enter a Date(mmdd): ' DATE
read -p 'Enter a Time (hh:mm:ss) :' TIME
read -p 'Enter AM/PM :' user_time
awk '{print $1 " " $2 ":" $5 "  " $6 }' ${DATE}_Dealer_schedule | grep "$user_time" | grep "$TIME"

