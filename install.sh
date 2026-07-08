#!/bin/bash

git clone https://github.com/pperonski/KapiBara-ROS-2-Robot-Package.git kapibara_robot

source /opt/ros/humble/setup.bash

colcon build --symlink-install