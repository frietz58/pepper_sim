# add dependencies from source
git clone https://github.com/ros-naoqi/pepper_moveit_config.git
git clone https://github.com/ros-naoqi/pepper_robot.git
git clone https://github.com/ros-naoqi/pepper_meshes.git
git clone https://github.com/ros-simulation/gazebo_ros_pkgs.git -b melodic-devel
git clone https://github.com/ros-naoqi/pepper_dcm_robot.git
git clone https://github.com/ros-naoqi/pepper_virtual.git
sudo apt-get install ros-melodic-moveit
sudo apt-get install -y libgazebo9-dev

# optinal, additional resources for getting started with rviz and moveit
# git clone -b melodic-devel https://github.com/ros-planning/moveit_tutorials.git
# git clone -b melodic-devel https://github.com/ros-planning/panda_moveit_config.git

# compile them
cd ..
catkin_make

# start custom installation of pepper meshes
cd build/
make pepper_meshes_meshes
cd ..

# hacky but only way I got the meshes to load correctly
cp -r devel/tmp/meshes src/pepper_meshes/

# attempts to install any still missing dependency
rosdep install --from-paths . --ignore-src --rosdistro melodic -y

# source development environment
source devel/setup.bash


