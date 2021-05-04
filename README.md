# LiDAR_stitch

## Stitch up LiDAR scan obtained from Livox LiDAR and save as .ply/.pcd/.las using ROS

## Steps:

### Setup:
1. Clone and build Livox SDK from https://github.com/Livox-SDK/Livox-SDK
2. Clone and build Livox ROS Driver from https://github.com/Livox-SDK/livox_ros_driver
3. Clone and build Livox Mapping from https://github.com/hku-mars/loam_livox
4. Clone and build Point Cloud I/O https://github.com/ANYbotics/point_cloud_io
5. Clone This repository from https://github.com/AbhinandanVellanki/LiDAR_stitch into current directory
6. run `$sudo apt-get install cloudcompare` check https://www.cloudcompare.org/doc/wiki/index.php?title=Command_line_mode
7. Record lvx file and save in current directory

### Run:
1. run `$chmod +x ply_2_pcd.sh lvx_2_ply.sh`
2. run `$./lvx_2_ply.sh <lvx_filename>`
3. run `$./ply_2_pcd.sh <ply folder name>`
