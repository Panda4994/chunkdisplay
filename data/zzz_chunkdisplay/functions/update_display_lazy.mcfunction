scoreboard players add @s pcd_updates 1
execute unless score ONE_TICK pcd_tmp matches 0 run tag @s add pcd_needs_updat2
execute if score ONE_TICK pcd_tmp matches 0 run tag @s add pcd_needs_update

function zzz_chunkdisplay:loop_prepare_lazy_detect/head
