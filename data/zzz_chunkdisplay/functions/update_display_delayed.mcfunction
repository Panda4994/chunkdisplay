# Cause update
execute as @e[tag=pcd_center,tag=pcd_needs_update] if score @s pcd_updates >= 1 pcd_const at @s run function zzz_chunkdisplay:update_display
