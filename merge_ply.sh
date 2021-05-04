#!/bin/sh

scan_name=$1
files=""
for f in ${scan_name}/*.ply
do
	files="${files} -O ${f}"
done
echo "Got .ply file names, running merger..."
CloudCompare -SILENT -NO_TIMESTAMP -C_EXPORT_FMT PLY ${files} -MERGE_CLOUDS -AUTO_SAVE OFF -SAVE_CLOUDS FILE "${scan_name}_merged.ply"
echo "Saved merged ply file!"
pcl_ply2pcd -h ${scan_name}_merged.ply ${scan_name}_pcd.pcd
echo "Saved pcd file!"