#/
# Fills an area with air
#
# @param as @s				Entity to use for position looping (y set accordingly)
# @param score START_X pcd_tmp		Negativ corner in half blocks
# @param score START_Z pcd_tmp		Negativ corner in half blocks
# @param score SIZE_X pcd_tmp		Size in blocks
# @param score SIZE_Z pcd_tmp		Size in blocks
#/

scoreboard players set X pcd_tmp 0
scoreboard players set Z pcd_tmp 0

execute store result entity @s Pos[0] double 0.5 run scoreboard players get START_X pcd_tmp
execute store result entity @s Pos[2] double 0.5 run scoreboard players get START_Z pcd_tmp

execute if score X pcd_tmp < SIZE_X pcd_tmp if score Z pcd_tmp < SIZE_Z pcd_tmp run function zzz_chunkdisplay:loop_remove/step
