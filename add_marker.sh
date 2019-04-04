#!/bin/sh
echo "Publishes virtual objects (Rviz Markers), requires teleop/manual navigation"
echo "Make sure you have sourced your devel/setup.bash file"
echo ""
xterm  -e  "roslaunch service_bot service_bot.launch" &
sleep 5

xterm  -e  "roslaunch service_bot amcl.launch" & 
sleep 3

xterm  -e  "roslaunch service_bot view_markers.launch" & 
sleep 3

xterm -geometry 140x7 -e "rosrun add_markers add_markers"