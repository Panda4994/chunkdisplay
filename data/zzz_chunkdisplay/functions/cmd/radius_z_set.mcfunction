#/
# Sets the radius and updates all needed values
#
# @param as @s			Display anker to perform on
# @param score RADIUS_Z pcd_tmp	New radius
#/


execute at @s run function zzz_chunkdisplay:cmd/display_remove_blocks


execute if score RADIUS_Z pcd_tmp <= 0 pcd_const run scoreboard players set RADIUS_Z pcd_tmp 1

scoreboard players operation @s pcd_radius_z = RADIUS_Z pcd_tmp

function zzz_chunkdisplay:display/size_z_update


execute at @s run function zzz_chunkdisplay:update_display
