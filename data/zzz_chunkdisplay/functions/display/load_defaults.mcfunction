# Default flags and settings
execute if score FLAG_FORCE pcd_defaults matches 1 run tag @s add pcd_flag_force
execute if score FLAG_ENTITY pcd_defaults matches 1 run tag @s add pcd_flag_entity
execute if score FLAG_ENTITY pcd_defaults matches 1 run tag @s add pcd_flag_global
execute if score FLAG_PLAYER pcd_defaults matches 1 run tag @s add pcd_flag_player
execute if score FLAG_LAZY pcd_defaults matches 1 run tag @s add pcd_flag_lazy
execute if score FLAG_FOLLOW pcd_defaults matches 1 run tag @s add pcd_flag_follow

execute store result score @s pcd_center_x run data get entity @s Pos[0] 0.0625
execute store result score @s pcd_center_z run data get entity @s Pos[2] 0.0625

scoreboard players operation @s pcd_radius_x = RADIUS_X pcd_defaults
scoreboard players operation @s pcd_radius_z = RADIUS_Z pcd_defaults

function zzz_chunkdisplay:display/size_x_update
function zzz_chunkdisplay:display/size_z_update

scoreboard players operation TICKS pcd_tmp = DELAY pcd_defaults
function zzz_chunkdisplay:cmd/refresh_set
