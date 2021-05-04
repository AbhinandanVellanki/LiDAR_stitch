#!/bin/bash

scan_name=${1::-4}
echo "Scan name: ${scan_name}"

#Convert the lvx file to bag
echo "Creating bag file..."
sleep 2
roslaunch livox_ros_driver lvx_to_rosbag.launch lvx_file_path:="${PWD}/${1}" & PIDCONV=$!
echo "Bag file created : ${scan_name}.bag!"

sleep 2
ply_dir="$PWD/${scan_name}_ply"
mkdir "$ply_dir"
#convert bag file to pcl
echo "Converting bag file to pcl..."

sleep 2
roslaunch loam_livox rosbag_loop.launch & PIDMAS=$!
rosrun point_cloud_io write _topic:=/velodyne_cloud_registered _folder_path:=$ply_dir & PIDWRI=$!
sleep 5 #wait for master node and writer to start
rosbag play ${scan_name}.bag & PIDBAG=$!

wait $PIDWRI

echo "Saved ply files to ${ply_dir}!"

# trap_ctrl_c(){
# 	kill $PIDBAG
# 	kill $PIDCONV
# 	kill $PIDMAS
# 	kill $PIDWRI
# }

# trap trap_ctrl_c INT