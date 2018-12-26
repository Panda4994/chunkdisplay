# Tag entities in chunk
execute unless entity @s[tag=pcd_flag_global] at @e[tag=pcd_chunkpos,limit=1] positioned ~-8 0 ~-8 run tag @e[type=!player,tag=!pcd_all,dx=15,dy=256,dz=15] add pcd_in_chunk

# Get entity positions
execute unless entity @s[tag=pcd_flag_global] as @e[tag=pcd_in_chunk] store result score @s pcd_chunk_x run data get entity @s Pos[0] 0.0625
execute unless entity @s[tag=pcd_flag_global] as @e[tag=pcd_in_chunk] store result score @s pcd_chunk_z run data get entity @s Pos[2] 0.0625

execute if entity @s[tag=pcd_flag_global] as @e[tag=pcd_in_chunk,tag=pcd_chunkpos] store result score @s pcd_chunk_x run data get entity @s Pos[0] 0.0625
execute if entity @s[tag=pcd_flag_global] as @e[tag=pcd_in_chunk,tag=pcd_chunkpos] store result score @s pcd_chunk_z run data get entity @s Pos[2] 0.0625


# Count entities
scoreboard players set ENTITY_COUNT pcd_tmp 0

execute as @e[tag=!pcd_all,tag=pcd_in_chunk] if score @s pcd_chunk_x = @e[tag=pcd_chunkpos,limit=1] pcd_chunk_x if score @s pcd_chunk_z = @e[tag=pcd_chunkpos,limit=1] pcd_chunk_z run scoreboard players add ENTITY_COUNT pcd_tmp 1


# Set blocks
execute at @s run fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:sea_pickle

execute if score ENTITY_COUNT pcd_tmp matches 1 at @s run setblock ~ ~1 ~ minecraft:sea_pickle[waterlogged=false,pickles=1]
execute if score ENTITY_COUNT pcd_tmp matches 2 at @s run setblock ~ ~1 ~ minecraft:sea_pickle[waterlogged=false,pickles=2]
execute if score ENTITY_COUNT pcd_tmp matches 3 at @s run setblock ~ ~1 ~ minecraft:sea_pickle[waterlogged=false,pickles=3]
execute if score ENTITY_COUNT pcd_tmp >= 4 pcd_const at @s run setblock ~ ~1 ~ minecraft:sea_pickle[waterlogged=false,pickles=4]


# Cleanup
execute unless entity @s[tag=pcd_flag_global] run tag @e[tag=pcd_in_chunk,tag=!pcd_chunkpos] remove pcd_in_chunk
