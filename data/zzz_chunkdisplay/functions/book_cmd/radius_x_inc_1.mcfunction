scoreboard players set RADIUS_X pcd_tmp 1

execute as @e[tag=pcd_center,sort=nearest,limit=1] run function zzz_chunkdisplay:cmd/radius_x_add

function zzz_chunkdisplay:replace_book
