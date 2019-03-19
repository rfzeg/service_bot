#!/bin/sh
xterm  -e  "roslaunch service_bot service_bot.launch" &
sleep 5

xterm  -e  "roslaunch service_bot gmapping.launch" & 
sleep 3

xterm  -e  "roslaunch service_bot view_navigation.launch" & 
sleep 3

xterm  -e  "roslaunch wall_follower follow_wall.launch"