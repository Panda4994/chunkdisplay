scoreboard players set TICKS pcd_tmp 20

execute as @e[tag=pcd_center,sort=nearest,limit=1] run function zzz_chunkdisplay:cmd/refresh_set

function zzz_chunkdisplay:book/replace
