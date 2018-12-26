tag @e[tag=pcd_center,sort=nearest,limit=1] remove pcd_flag_global

execute as @e[tag=pcd_center,sort=nearest,limit=1] at @s run function zzz_chunkdisplay:update_display
