execute as @e[tag=pcd_center,tag=pcd_needs_updat2] at @s run function zzz_chunkdisplay:display/update_display
execute as @e[tag=pcd_center,tag=pcd_needs_update] run tag @s add pcd_needs_updat2
execute as @e[tag=pcd_center,tag=pcd_needs_update] run tag @s remove pcd_needs_update

execute if entity @e[tag=pcd_center,tag=pcd_flag_refresh] run function zzz_chunkdisplay:autoupdate
