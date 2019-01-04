#/
# @param as		Marker entity for chunk position
# @param at		Display position
#/

# Tag entities in chunk
execute at @s positioned ~-8 0 ~-8 run tag @a[dx=15,dy=256,dz=15] add pcd_in_chunk

# Get entity positions
execute as @a[tag=pcd_in_chunk] store result score @s pcd_chunk_x run data get entity @s Pos[0] 0.0625
execute as @a[tag=pcd_in_chunk] store result score @s pcd_chunk_z run data get entity @s Pos[2] 0.0625

execute store result score @s pcd_chunk_x run data get entity @s Pos[0] 0.0625
execute store result score @s pcd_chunk_z run data get entity @s Pos[2] 0.0625


# Remove false positives
execute as @a[tag=pcd_in_chunk] if score @s pcd_chunk_x = @e[tag=pcd_chunkpos,limit=1] pcd_chunk_x if score @s pcd_chunk_z = @e[tag=pcd_chunkpos,limit=1] pcd_chunk_z run tag @s add pcd_truely_in_chunk

tag @r[tag=pcd_truely_in_chunk] add pcd_player_in_chunk

# Place head
fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:player_head

execute positioned ~ ~1 ~ as @p[tag=pcd_player_in_chunk] run function zzz_chunkdisplay:loop_detect_chunk/misc_place_head

execute positioned ~ ~1 ~ as @p[tag=pcd_player_in_chunk] run function zzz_chunkdisplay:loop_detect_chunk/misc_get_head

# Cleanup
tag @a[tag=pcd_in_chunk,tag=!pcd_chunkpos] remove pcd_in_chunk
tag @a[tag=pcd_truely_in_chunk] remove pcd_truely_in_chunk
tag @a[tag=pcd_player_in_chunk] remove pcd_player_in_chunk
