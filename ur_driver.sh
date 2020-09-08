source /opt/ros/kinetic/setup.bash
mkdir -p catkin_ws/src && cd catkin_ws

git clone https://github.com/UniversalRobots/Universal_Robots_ROS_Driver.git src/Universal_Robots_ROS_Driver
git clone -b calibration_devel https://github.com/fmauch/universal_robot.git src/fmauch_universal_robot

apt update && apt-get upgrade
rosdep update
rosdep install --from-paths src --ignore-src -y
catkin_make
