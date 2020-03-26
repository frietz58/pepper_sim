git clone https://github.com/ros-naoqi/pepper_moveit_config.git
git clone https://github.com/ros-naoqi/pepper_robot.git
git clone https://github.com/ros-naoqi/pepper_meshes.git
sudo apt-get install ros-melodic-moveit
cd ..
catkin_make
cd build/
make pepper_meshes_meshes
cd ..
cp -r devel/tmp/meshes src/pepper_meshes/
source devel/setup.bash


