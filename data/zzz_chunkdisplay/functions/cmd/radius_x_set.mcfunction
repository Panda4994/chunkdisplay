#/
# Sets the radius and updates all needed values
#
# @param as @s			Display anker to perform on
# @param score RADIUS_X pcd_tmp	New radius
#/


execute at @s run function zzz_chunkdisplay:cmd/display_remove_blocks


execute if score RADIUS_X pcd_tmp <= 0 pcd_const run scoreboard players set RADIUS_X pcd_tmp 1

scoreboard players operation @s pcd_radius_x = RADIUS_X pcd_tmp

function zzz_chunkdisplay:misc/size_x_update


execute at @s run function zzz_chunkdisplay:update_display
