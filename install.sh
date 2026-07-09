#!/bin/bash

git clone https://github.com/ros-controls/mujoco_ros2_control.git
git clone https://github.com/pperonski/KapiBara-ROS-2-Robot-Package.git kapibara_robot

source /opt/ros/humble/setup.bash

colcon build --symlink-install