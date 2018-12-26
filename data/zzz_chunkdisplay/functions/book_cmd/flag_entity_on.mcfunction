tag @e[tag=pcd_center,sort=nearest,limit=1] add pcd_flag_entity

execute as @e[tag=pcd_center,sort=nearest,limit=1] at @s run function zzz_chunkdisplay:update_display

function zzz_chunkdisplay:replace_book
