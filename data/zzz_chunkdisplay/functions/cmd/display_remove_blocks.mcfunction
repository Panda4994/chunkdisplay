summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:[pcd_all,pcd_tmp,pcd_cleaner]}

scoreboard players operation START_X pcd_tmp = @s pcd_display_x
scoreboard players operation START_Z pcd_tmp = @s pcd_display_z

scoreboard players operation SIZE_X pcd_tmp = @s pcd_size_x
scoreboard players operation SIZE_Z pcd_tmp = @s pcd_size_z

execute as @e[tag=pcd_cleaner] at @s run function zzz_chunkdisplay:loop_remove/head

tp @e[tag=pcd_cleaner] ~ ~ ~

execute as @e[tag=pcd_cleaner] at @s run function zzz_chunkdisplay:loop_remove/head

kill @e[tag=pcd_cleaner]
