#/
# Write lazy/active flags
#
# @param as @s		lazy query entity
# @param at @s		lazy query entity position
#/

# Update values
execute unless score GAMETIME pcd_tmp = @s pcd_gametime run function zzz_chunkdisplay:misc/update_lazy_query

execute if entity @s[tag=pcd_active] run scoreboard players operation CHUNK pcd_tmp += 8 pcd_const
execute if entity @s[tag=pcd_valid] run scoreboard players operation CHUNK pcd_tmp += 16 pcd_const
