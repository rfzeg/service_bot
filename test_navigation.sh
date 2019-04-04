#!/bin/sh
echo "Runs AMCL, test sending navigation goals usign Rviz"
echo "Make sure you have sourced your devel/setup.bash file"
xterm  -e  "roslaunch service_bot service_bot.launch" &
sleep 5

xterm  -e  "roslaunch service_bot amcl.launch" & 
sleep 3

xterm  -e  "roslaunch service_bot view_navigation.launch"

