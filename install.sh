#!/bin/bash

git clone https://github.com/ros-controls/mujoco_ros2_control.git
cd mujoco_ros2_control
git checkout c811dcca2039cf6a88af3077e3f3dbbbd9c37a66
cd ..

git clone https://github.com/pperonski/KapiBara-ROS-2-Robot-Package.git kapibara_robot

source /opt/ros/humble/setup.bash

colcon build --symlink-install