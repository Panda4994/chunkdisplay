#/
# Enables refreshing of a display
#
# @param as @s			Display anker to perform on
#/

scoreboard players operation TICKS pcd_tmp = @s pcd_delay

function zzz_chunkdisplay:cmd/refresh_set
