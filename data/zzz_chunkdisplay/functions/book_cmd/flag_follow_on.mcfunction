tag @a[tag=pcd_followed] remove pcd_followed
tag @s add pcd_followed
tag @e[tag=pcd_center,sort=nearest,limit=1] add pcd_flag_follow

execute as @e[tag=pcd_center,sort=nearest,limit=1] at @s run function zzz_chunkdisplay:update_display

function zzz_chunkdisplay:replace_book
