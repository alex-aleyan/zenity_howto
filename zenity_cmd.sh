#!/bin/bash

temp=$(mktemp -t temp.XXXXXX)
temp2=$(mktemp -t temp2.XXXXXX)

for ((num=0; num < 101;num=num+10))
{
sleep 0.3;
echo $num
} | zenity --progress --text="PROGRESS TEXT"
#exit 0

zenity --text-info --title "Disk space" --filename=$temp --width 750 --height 10

zenity --text-info --title "Logged in users" --filename=$temp --width 500 --height 10

zenity --text-info --title "Memory usage" --filename=$temp --width 300 --height 500

#zenity --list --radiolist --title "Sys Admin Menu" --column "Select" \
#--column "Menu Item" FALSE "Display diskspace" FALSE "Display users" \
#FALSE "Display memory usage" FALSE "Exit" > $temp2

POOP=$(zenity --list --radiolist --title "Sys Admin Menu" --column "Select" \
--column "Menu Item" FALSE "Display diskspace" FALSE "Display users" \
FALSE "Display memory usage" FALSE "Exit" )

zenity --info "Sorry, invalid selection; $POOP"


