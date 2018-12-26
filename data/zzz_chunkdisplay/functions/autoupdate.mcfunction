# Get gametime
execute store result score GAMETIME pcd_tmp run time query gametime
scoreboard players operation @e[tag=pcd_flag_refresh,tag=pcd_center] pcd_tmp = GAMETIME pcd_tmp

execute as @e[tag=pcd_flag_refresh,tag=pcd_center] run scoreboard players operation @s pcd_tmp %= @e[tag=pcd_flag_refresh,tag=pcd_center] pcd_delay

execute as @e[tag=pcd_flag_refresh,tag=pcd_center] at @s if score @s pcd_tmp = @s pcd_delay_primer run function zzz_chunkdisplay:update_display
