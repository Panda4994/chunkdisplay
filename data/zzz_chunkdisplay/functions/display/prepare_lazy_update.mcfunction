scoreboard players add @s pcd_updates 1
execute unless score ONE_TICK pcd_tmp matches 0 run tag @s add pcd_needs_updat2
execute if score ONE_TICK pcd_tmp matches 0 run tag @s add pcd_needs_update

# Follow player
execute if entity @s[tag=pcd_flag_follow] run function zzz_chunkdisplay:display/follow_player

function zzz_chunkdisplay:loop_prepare_lazy_detect/head
