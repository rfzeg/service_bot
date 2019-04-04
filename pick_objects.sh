#!/bin/sh
echo "Example of amcl and autonomous waypoint navigation"
echo "Make sure you have sourced your devel/setup.bash file"
echo ""
xterm  -e  "roslaunch service_bot service_bot.launch" &
sleep 5

xterm  -e  "roslaunch service_bot amcl.launch" & 
sleep 3

xterm  -e  "roslaunch service_bot view_navigation.launch" & 
sleep 3

xterm  -e  "roslaunch navi_goals navi_goals.launch"