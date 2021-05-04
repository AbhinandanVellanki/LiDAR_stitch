# LiDAR_stitch

## Stitch up LiDAR scan obtained from Livox LiDAR and save as .pcd and .ply

## Steps:

### Setup:
1. Clone Livox SDK from https://github.com/Livox-SDK/Livox-SDK
2. Clone Livox ROS Driver from https://github.com/Livox-SDK/livox_ros_driver
3. Clone Livox Mapping from https://github.com/hku-mars/loam_livox
3. run `$sudo apt-get install cloudcompare`
4. Record lvx file and save in current directory

### Run:
1. run `$chmod +x ply_2_pcd.sh lvx_2_ply.sh`
2. run `$./lvx_2_ply.sh <lvx_filename>`
3. run `$./ply_2_pcd.sh <ply folder name>`
