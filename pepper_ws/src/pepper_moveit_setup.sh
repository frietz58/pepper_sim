git clone https://github.com/ros-naoqi/pepper_moveit_config.git
git clone https://github.com/ros-naoqi/pepper_robot.git
git clone https://github.com/ros-naoqi/pepper_meshes.git
git clone https://github.com/ros-simulation/gazebo_ros_pkgs.git -b melodic-devel
sudo apt-get install ros-melodic-moveit
sudo apt-get install -y libgazebo9-dev

cd ..
catkin_make
cd build/
make pepper_meshes_meshes
cd ..
cp -r devel/tmp/meshes src/pepper_meshes/

# rosdep install --from-paths . --ignore-src --rosdistro melodic -y


source devel/setup.bash


