#!/bin/bash

rossource
echo "Setting ROS_MASTER to $1."
export ROS_MASTER_URI=http://$1:11311
