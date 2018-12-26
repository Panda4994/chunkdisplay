#/
# Adds to the refresh delay and updates all needed values
#
# @param as @s			Display anker to perform on
# @param score TICKS pcd_tmp	Additional sleep delay in ticks, negative to substract
#/

scoreboard players operation TICKS pcd_tmp += @s pcd_delay

function zzz_chunkdisplay:cmd/refresh_set
