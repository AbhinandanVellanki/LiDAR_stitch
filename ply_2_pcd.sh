#!/bin/bash

ply_dir=${1}
scan_name=${1::-4}

echo "Starting to merge ply files"
sleep 2

files=""
for f in "$ply_dir"/* #create variable to load all individual ply files
do
	files="${files} -O ${f}"
done

echo "Got .ply file names, running merger..."
#merge loaded ply files using CloudCompare command line
CloudCompare -SILENT -NO_TIMESTAMP -C_EXPORT_FMT PLY ${files} -MERGE_CLOUDS -AUTO_SAVE OFF -SAVE_CLOUDS FILE "${scan_name}_merged.ply"
echo "Saved merged ply file!"

#convert ply file to pcd without changing colour
#pcl_ply2pcd -h ${scan_name}_merged.ply ${scan_name}_pcd.pcd
#echo "Saved pcd file!"

#convert ply file to while colour pcd
python3 change_pts_colour_pcd.py ${scan_name}_merged.ply ${scan_name}.pcd
echo "Saved pcd file!"
