#/
# Update the display with the current parameters
#
# @param as @s				Display anker with possible tags: 
#					 - pcd_flag_force  if set detect foceloaded chunks
#					 - pcd_flag_lazy   if set detect lazy/active chunks
#					 - pcd_flag_entity if set detect entities
#					 - pcd_flag_global if set detect entities globally
#					 - pcd_flag_player if set detect players
#/

# Follow player
execute if entity @s[tag=pcd_flag_follow] run function zzz_chunkdisplay:display/follow_player


# Copy values
# Dimension
scoreboard players operation DIMENSION pcd_tmp = @s pcd_dimension

# Display size
scoreboard players operation SIZE_X pcd_tmp = @s pcd_size_x
scoreboard players operation SIZE_Z pcd_tmp = @s pcd_size_z

# Display start
scoreboard players operation DISPLAY_X pcd_tmp = @s pcd_display_x
scoreboard players operation DISPLAY_Z pcd_tmp = @s pcd_display_z

# Chunk-Query start
scoreboard players operation CHUNK_X pcd_tmp = @s pcd_chunk_x
scoreboard players operation CHUNK_Z pcd_tmp = @s pcd_chunk_z

# Copy flags
scoreboard players set FLAG_LAZY pcd_tmp 0
execute if entity @s[tag=pcd_flag_lazy] run scoreboard players set FLAG_LAZY pcd_tmp 1
scoreboard players set FLAG_FORCE pcd_tmp 0
execute if entity @s[tag=pcd_flag_force] run scoreboard players set FLAG_FORCE pcd_tmp 1
scoreboard players set FLAG_ENTITY pcd_tmp 0
execute if entity @s[tag=pcd_flag_entity] run scoreboard players set FLAG_ENTITY pcd_tmp 1
scoreboard players set FLAG_GLOBAL pcd_tmp 0
execute if entity @s[tag=pcd_flag_global] run scoreboard players set FLAG_GLOBAL pcd_tmp 1
scoreboard players set FLAG_PLAYER pcd_tmp 0
execute if entity @s[tag=pcd_flag_player] run scoreboard players set FLAG_PLAYER pcd_tmp 1



# Loop over chunks (get loaded, lazy, foceloaded, entity, player)
function zzz_chunkdisplay:loop_detect_chunk/head



# TODO: Update something something?
execute if score @s pcd_updates >= 1 pcd_const run scoreboard players remove @s pcd_updates 1
execute if score @s pcd_updates < 1 pcd_const run tag @s remove pcd_needs_update
execute if score @s pcd_updates < 1 pcd_const run tag @s remove pcd_needs_updat2
