import bpy
import sys
import subprocess
import os
import pandas as pd


current_scene = bpy.context.scene
blend_file_path = bpy.data.filepath
blend_file_directory = os.path.dirname(blend_file_path)

csv_relative_path = "coordinates.csv"
csv_path = os.path.join(blend_file_directory, csv_relative_path)

data = pd.read_csv(csv_path, sep=',', names=['l', 'x', 'y'])
l = data['l'][0]
#r = data['r'][0]

sphere = current_scene.objects['pendulum_sphere']
hook_u = current_scene.objects['hook_upper']
focal_point = current_scene.objects['focal_point']

def bake_keyframes(object):
    for index in range(data.shape[0]):
        object.location = (data['x'][index], 0, data['y'][index] + l+l/10)
        object.keyframe_insert(data_path='location', frame=index)
    
def reset_position(object):
    object.location = (0.0, 0.0, 0.0)

def clear_keyframes(object):
    object.animation_data_clear()


reset_position(sphere)
clear_keyframes(sphere)

#sphere.scale = (r*2,r*2,r*2)

hook_u.location = (0.0, 0.0, l+l/10)
focal_point.location = (0.0, 0.0, l/2)

bake_keyframes(sphere)

current_scene.frame_end = len(data['x'])

