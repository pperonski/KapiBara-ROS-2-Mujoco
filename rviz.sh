#!/bin/bash

xhost local:docker

docker compose -f compose.yml run gazebo rviz2