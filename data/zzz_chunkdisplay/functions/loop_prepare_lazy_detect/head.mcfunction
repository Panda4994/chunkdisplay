#/
# Summons or updates an area effect cloud in each loaded chunk of an area for later lazy querying
#
# @param as @s				Display anker with possible tags: 
#					 - pcd_flag_force  if set detect foceloaded chunks
#					 - pcd_flag_entity if set detect entities
#					 - pcd_flag_global if set detect entities globally
#					 - pcd_flag_player if set detect players
#					Scoreboards:
#					 - pcd_chunk_x; startposition
#					 - pcd_chunk_z; startposition
#					 - pcd_size_x; size of chunk area
#					 - pcd_size_z; size of chunk area
# @param at @s				Position needs to be loaded, best execute at @s
#/

# Kill everything that could cause trouble
kill @e[tag=pcd_tmp]

# Query Entity
summon minecraft:area_effect_cloud ~ 0 ~ {Tags:[pcd_all,pcd_tmp,pcd_chunkpos]}
# Teleport to right dimension
execute if score @s pcd_dimension matches -1 as @e[tag=pcd_chunkpos] in minecraft:the_nether run tp 29999976.0 0 29999976.0
execute if score @s pcd_dimension matches 0 as @e[tag=pcd_chunkpos] in minecraft:overworld run tp 29999976.0 0 29999976.0
execute if score @s pcd_dimension matches 1 as @e[tag=pcd_chunkpos] in minecraft:the_end run tp 29999976.0 0 29999976.0

# Copy needed variables for faster access
scoreboard players operation CHUNK_X pcd_tmp = @s pcd_chunk_x
scoreboard players operation CHUNK_Z pcd_tmp = @s pcd_chunk_z
scoreboard players operation SIZE_X pcd_tmp = @s pcd_size_x
scoreboard players operation SIZE_Z pcd_tmp = @s pcd_size_z

# Gametime
execute store result score GAMETIME pcd_tmp run time query gametime

# Loop starting positions
scoreboard players set X pcd_tmp 0
scoreboard players set Z pcd_tmp 0

# TP to chunk-query start
execute as @e[tag=pcd_chunkpos] store result entity @s Pos[0] double 1 run scoreboard players get CHUNK_X pcd_tmp
execute as @e[tag=pcd_chunkpos] store result entity @s Pos[2] double 1 run scoreboard players get CHUNK_Z pcd_tmp

# Set needed counter to be increased
scoreboard players set NEEDED pcd_tmp 1

# Run Loop
execute if score X pcd_tmp < SIZE_X pcd_tmp if score Z pcd_tmp < SIZE_Z pcd_tmp as @e[tag=pcd_chunkpos,limit=1] at @s run function zzz_chunkdisplay:loop_prepare_lazy_detect/step


# Cleanup
kill @e[tag=pcd_tmp]
