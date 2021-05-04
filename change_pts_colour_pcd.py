from pypcd import pypcd
from open3d import *
import numpy as np
import argparse

def main(args):
    points = open3d.io.read_point_cloud(args.l)
    print(points)
    points.paint_uniform_color([1, 1, 1]) #white
    open3d.io.write_point_cloud(args.s, points )
    print("Saved pcd file:", args.s)
    
if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='ply to white pcd')
    parser.add_argument("l", help="Ply file path to load" )
    parser.add_argument("s", help="pcd file path to save")
    args = parser.parse_args()
    main(args=args)
