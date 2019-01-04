#/
# Summon or update a query area effect clound in the chunk
#
# @param at			In the chunk to be checked, exactly in the center at x and z
# @param score GAMETIME pcd_tmp	Score should be set to the current gametime
#/

execute positioned ~-0.05 0 ~-0.05 unless entity @e[dx=0.1,dy=0.1,dz=0.1,tag=pcd_lazy_query] run summon minecraft:area_effect_cloud ~0.05 0 ~0.05 {Tags:[pcd_all,pcd_lazy_query],Duration:2s}

execute positioned ~-0.05 0 ~-0.05 as @e[dx=0.1,dy=0.1,dz=0.1,tag=pcd_lazy_query] unless score GAMETIME pcd_tmp = @s pcd_gametime run function zzz_chunkdisplay:misc/update_lazy_query
