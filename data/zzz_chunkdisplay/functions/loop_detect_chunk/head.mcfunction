#/
# Checks which chunks are loaded and places according blocks in the display
#
# @param as @s				Display anker with possible tags: 
#					 - pcd_flag_force  if set detect foceloaded chunks
#					 - pcd_flag_entity if set detect entities
#					 - pcd_flag_global if set detect entities globally
#					 - pcd_flag_player if set detect players
# @param entity @e[tag=pcd_displaypos]	Entity for display position, left unclean
# @param entity @e[tag=pcd_chunkpos]	Entity for chunk position, left unclean
# @param score SIZE_X pcd_tmp		Size of display in blocks
# @param score SIZE_Z pcd_tmp		Size of display in blocks
#/

# Set start positions
# Display start
scoreboard players operation DISPLAY_X pcd_tmp = @s pcd_display_x
scoreboard players operation DISPLAY_Z pcd_tmp = @s pcd_display_z

# TP to display start
execute as @e[tag=pcd_displaypos] store result entity @s Pos[0] double 0.5 run scoreboard players get DISPLAY_X pcd_tmp
execute as @e[tag=pcd_displaypos] store result entity @s Pos[2] double 0.5 run scoreboard players get DISPLAY_Z pcd_tmp

# Chunk-Query start
scoreboard players operation CHUNK_X pcd_tmp = @s pcd_chunk_x
scoreboard players operation CHUNK_Z pcd_tmp = @s pcd_chunk_z

# TP to chunk-query start
execute as @e[tag=pcd_chunkpos] store result entity @s Pos[0] double 1 run scoreboard players get CHUNK_X pcd_tmp
execute as @e[tag=pcd_chunkpos] store result entity @s Pos[2] double 1 run scoreboard players get CHUNK_Z pcd_tmp


# Set initial values
scoreboard players set X pcd_tmp 0
scoreboard players set Z pcd_tmp 0

# Gametime
execute store result score GAMETIME pcd_tmp run time query gametime

# Copy flags
execute as @s[tag=pcd_flag_lazy] run tag @e[tag=pcd_displaypos] add pcd_flag_lazy
execute as @s[tag=pcd_flag_force] run tag @e[tag=pcd_displaypos] add pcd_flag_force
execute as @s[tag=pcd_flag_entity] run tag @e[tag=pcd_displaypos] add pcd_flag_entity
execute as @s[tag=pcd_flag_global] run tag @e[tag=pcd_displaypos] add pcd_flag_global
execute as @s[tag=pcd_flag_player] run tag @e[tag=pcd_displaypos] add pcd_flag_player

# Set entity chunk positions if global is selected
execute if entity @s[tag=pcd_flag_global] run tag @e[type=!player,tag=!pcd_all] add pcd_in_chunk
# Get entity positions
execute if entity @s[tag=pcd_flag_global] as @e[tag=pcd_in_chunk] store result score @s pcd_chunk_x run data get entity @s Pos[0] 0.0625
execute if entity @s[tag=pcd_flag_global] as @e[tag=pcd_in_chunk] store result score @s pcd_chunk_z run data get entity @s Pos[2] 0.0625



execute if score X pcd_tmp < SIZE_X pcd_tmp if score Z pcd_tmp < SIZE_Z pcd_tmp as @e[tag=pcd_displaypos,limit=1] run function zzz_chunkdisplay:loop_detect_chunk/step
