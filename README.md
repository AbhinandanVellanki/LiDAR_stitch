# LiDAR_stitch

## Stitch up LiDAR scan obtained from Livox LiDAR and save as .pcd and .ply using ROS

## Steps:

### Setup:
1. Clone and build Livox SDK from https://github.com/Livox-SDK/Livox-SDK
2. Clone and build Livox ROS Driver from https://github.com/Livox-SDK/livox_ros_driver
3. Clone and build Livox Mapping from https://github.com/hku-mars/loam_livox
4. Clone This repository from https://github.com/AbhinandanVellanki/LiDAR_stitch into current directory
5. run `$sudo apt-get install cloudcompare`
6. Record lvx file and save in current directory

### Run:
1. run `$chmod +x ply_2_pcd.sh lvx_2_ply.sh`
2. run `$./lvx_2_ply.sh <lvx_filename>`
3. run `$./ply_2_pcd.sh <ply folder name>`
