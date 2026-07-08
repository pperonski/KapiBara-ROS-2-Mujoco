FROM althack/ros2:humble-dev

ENV DEBIAN_FRONTEND=noninteractive

RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key | gpg --dearmor --batch --yes -o /usr/share/keyrings/ros-archive-keyring.gpg

# Add the ROS 2 repository for Jazzy (Ubuntu 24.04 is "noble")
RUN echo "deb [signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu noble main" > /etc/apt/sources.list.d/ros2.list

RUN apt update

RUN apt install -y git ros-humble-ros-base \
        ros-humble-rmw-cyclonedds-cpp \
        ros-humble-rviz2 \
        ros-humble-joint-state-publisher-gui \
        ros-humble-controller-manager \
        ros-humble-rqt-image-view \
        ros-humble-image-transport-plugins \
        ros-humble-compressed-image-transport \
        ros-humble-ros2-control \
        ros-humble-hardware-interface \
        ros-humble-controller-manager \
        ros-humble-ros2-controllers \
        ros-humble-xacro \
        ros-humble-mqtt-client \
        ros-humble-mujoco-ros2-control \
        python3-numpy

RUN echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc
RUN echo 'export PATH="$PATH:/cmd"' >> /root/.bashrc

RUN mkdir -p app

WORKDIR /app

COPY install.sh /app/install.sh

RUN chmod +x /app/install.sh

RUN ./install.sh

CMD [ "/entrypoint.sh" ]