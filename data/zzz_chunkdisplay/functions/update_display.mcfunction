# Marker entities
kill @e[tag=pcd_tmp]
summon minecraft:area_effect_cloud ~ 0 ~ {Tags:[pcd_all,pcd_tmp,pcd_chunkpos,pcd_in_chunk]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[pcd_all,pcd_tmp,pcd_displaypos]}


# Follow player
execute as @s[tag=pcd_flag_follow] run function zzz_chunkdisplay:follow_player


# Radius to size
scoreboard players operation SIZE_X pcd_tmp = @s pcd_size_x
scoreboard players operation SIZE_Z pcd_tmp = @s pcd_size_z


# Loop 1 (get loaded, foceloaded, entity, player)
function zzz_chunkdisplay:loop_detect_chunk/head


# Loop 2 (get lazy/active)
execute as @s[tag=pcd_flag_lazy] as @e[tag=pcd_displaypos] run function zzz_chunkdisplay:loop_detect_lazy/head


# Cleanup
kill @e[tag=pcd_tmp]
