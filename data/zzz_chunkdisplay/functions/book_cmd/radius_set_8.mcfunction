scoreboard players set RADIUS_X pcd_tmp 8
scoreboard players set RADIUS_Z pcd_tmp 8

execute as @e[tag=pcd_center,sort=nearest,limit=1] run function zzz_chunkdisplay:cmd/radius_set

function zzz_chunkdisplay:book/replace
