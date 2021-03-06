#!/bin/sh
echo "Runs gmapping for building a map usign SLAM autonomously using a follow wall algorithm"
echo "Make sure you have sourced your devel/setup.bash file"
xterm  -e  "roslaunch service_bot service_bot.launch" &
sleep 5

xterm  -e  "roslaunch service_bot gmapping.launch" & 
sleep 3

xterm  -e  "roslaunch service_bot view_mapping.launch" & 
sleep 3

xterm  -e  "roslaunch wall_follower wall_follower.launch"