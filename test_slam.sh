#!/bin/sh
echo "Runs gmapping for building a grid-map of the environment usign SLAM, requires teleop/manual robot control"
echo "Make sure you have sourced your devel/setup.bash file"

xterm  -e  "roslaunch service_bot service_bot.launch" &
sleep 5

xterm  -e  "roslaunch service_bot gmapping.launch" & 
sleep 3

xterm  -e  "roslaunch service_bot view_mapping.launch" & 
sleep 3

xterm  -e  "rosrun teleop_twist_keyboard teleop_twist_keyboard.py"