#/
# Adds to the radius and updates all needed values
#
# @param as @s			Display anker to perform on
# @param score RADIUS_Z pcd_tmp	Delta radius
#/

scoreboard players operation RADIUS_Z pcd_tmp += @s pcd_radius_z

function zzz_chunkdisplay:cmd/radius_z_set
