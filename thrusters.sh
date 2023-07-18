#!/bin/bash

var="${1:-0.0}"
var2="${2:-0.0}"

command=$(ros2 topic pub --once /usv/right/thrust/cmd_thrust std_msgs/msg/Float64 "{data: $var}" & ros2 topic pub --once /usv/left/thrust/cmd_thrust std_msgs/msg/Float64 "{data: $var2}")

echo "$command"
