#!/bin/bash
# Author: voskresenye
# Date: 12.11.2022

while [ ! ]
do 
	PERCENTAGE=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | tr -s " " | tr -d "%" | cut -d " " -f 3`
	STATE=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | tr -s " " | cut -d " " -f 3`
	if [ $PERCENTAGE -le 30 ] && [ $STATE != "charging" ]	
	then
		notify-send "please charge your computer, your battery level is at $PERCENTAGE%"
	fi
	sleep 60
done
#END
