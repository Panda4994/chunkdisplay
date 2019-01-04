execute as @e[tag=pcd_center,tag=pcd_flag_follow] at @s run function zzz_chunkdisplay:update_display

tag @a[tag=pcd_followed] remove pcd_followed
tag @e[tag=pcd_center,tag=pcd_flag_follow] remove pcd_flag_follow

function zzz_chunkdisplay:book/replace
