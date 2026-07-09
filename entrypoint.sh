#!/bin/bash

cd kapibara_robot
git pull
git reset --hard origin/master
cd ..

colcon build --symlink-install

source install/setup.bash

ros2 launch kapibara_robot launch.sim.robot.py