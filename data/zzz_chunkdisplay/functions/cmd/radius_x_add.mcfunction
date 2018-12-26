#/
# Adds to the radius and updates all needed values
#
# @param as @s			Display anker to perform on
# @param score RADIUS_X pcd_tmp	Delta radius
#/

scoreboard players operation RADIUS_X pcd_tmp += @s pcd_radius_x

function zzz_chunkdisplay:cmd/radius_x_set
