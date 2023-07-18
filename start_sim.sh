#!/bin/bash

source $HOME/mbzirc_ws/install/setup.bash

ros2 launch mbzirc_ros competition_local.launch.py ign_args:="-v 4 -r coast.sdf" & ros2 launch mbzirc_ign spawn.launch.py name:=usv world:=coast model:=usv x:=-1450 y:=-16.5 z:=0.3 R:=0 P:=0 Y:=0 && fg
