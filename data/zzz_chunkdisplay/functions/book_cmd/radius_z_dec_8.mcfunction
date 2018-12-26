scoreboard players set RADIUS_Z pcd_tmp -8

execute as @e[tag=pcd_center,sort=nearest,limit=1] run function zzz_chunkdisplay:cmd/radius_z_add

function zzz_chunkdisplay:replace_book
