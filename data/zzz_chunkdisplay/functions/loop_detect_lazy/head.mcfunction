#/
# Checks the each display pixel for the surrounding 5x5 blocks for #chunkdisplay:chunk_loaded
# and places the block in it's own position accordingly
#
# @param as @s				Entity to use for position looping
# @param score DISPLAY_X pcd_tmp	Negativ corner of display in half blocks
# @param score DISPLAY_Z pcd_tmp	Negativ corner of display in half blocks
# @param score SIZE_X pcd_tmp		Size of display in blocks
# @param score SIZE_Z pcd_tmp		Size of display in blocks
#/

scoreboard players set X pcd_tmp 0
scoreboard players set Z pcd_tmp 0

scoreboard players operation DISPLAY_X pcd_tmp += 4 pcd_const
scoreboard players operation DISPLAY_Z pcd_tmp += 4 pcd_const

scoreboard players operation SIZE_X pcd_tmp -= 4 pcd_const
scoreboard players operation SIZE_Z pcd_tmp -= 4 pcd_const

execute as @s store result entity @s Pos[0] double 0.5 run scoreboard players get DISPLAY_X pcd_tmp
execute as @s store result entity @s Pos[2] double 0.5 run scoreboard players get DISPLAY_Z pcd_tmp

execute if score X pcd_tmp < SIZE_X pcd_tmp if score Z pcd_tmp < SIZE_Z pcd_tmp run function zzz_chunkdisplay:loop_detect_lazy/step
