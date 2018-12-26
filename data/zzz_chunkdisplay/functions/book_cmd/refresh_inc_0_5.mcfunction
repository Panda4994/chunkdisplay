scoreboard players set TICKS pcd_tmp 10

execute as @e[tag=pcd_center,sort=nearest,limit=1] run function zzz_chunkdisplay:cmd/refresh_add

function zzz_chunkdisplay:replace_book
