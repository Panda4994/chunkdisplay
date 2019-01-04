#/
# Checks which chunks are loaded and places according blocks in the display
#
# @param score DIMENSION pcd_tmp	Dimension to be motiored -1, 0, 1
# @param score SIZE_X pcd_tmp		Size of display in blocks
# @param score SIZE_Z pcd_tmp		Size of display in blocks
# @param score DISPLAY_X pcd_tmp	Start of display in blocks
# @param score DISPLAY_Z pcd_tmp	Start of display in blocks
# @param score CHUNK_X pcd_tmp		Start of chunk area in blocks
# @param score CHUNK_Z pcd_tmp		Start of chunk area in blocks
# @param score FLAG_LAZY pcd_tmp	If 1 lazy chunks are shown, else not
# @param score FLAG_FORCE pcd_tmp	If 1 forceloaded chunks are shown, else not
# @param score FLAG_ENTITY pcd_tmp	If 1 entities are shown, else not
# @param score FLAG_GLOBAL pcd_tmp	If 1 global entity list is used, else not
# @param score FLAG_PLAYER pcd_tmp	If 1 players are shown, else not
#/

# Kill potential left over entities
kill @e[tag=pcd_tmp]

# Loop entities
summon minecraft:area_effect_cloud ~ 0 ~ {Tags:[pcd_all,pcd_tmp,pcd_chunkpos,pcd_in_chunk]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[pcd_all,pcd_tmp,pcd_displaypos]}

# Teleport to right dimension
execute if score DIMENSION pcd_tmp matches -1 as @e[tag=pcd_chunkpos] in minecraft:the_nether run tp 29999976.0 0 29999976.0
execute if score DIMENSION pcd_tmp matches 0 as @e[tag=pcd_chunkpos] in minecraft:overworld run tp 29999976.0 0 29999976.0
execute if score DIMENSION pcd_tmp matches 1 as @e[tag=pcd_chunkpos] in minecraft:the_end run tp 29999976.0 0 29999976.0

# TP to display start
execute as @e[tag=pcd_displaypos] store result entity @s Pos[0] double 0.5 run scoreboard players get DISPLAY_X pcd_tmp
execute as @e[tag=pcd_displaypos] store result entity @s Pos[2] double 0.5 run scoreboard players get DISPLAY_Z pcd_tmp

# TP to chunk-query start
execute as @e[tag=pcd_chunkpos] store result entity @s Pos[0] double 1 run scoreboard players get CHUNK_X pcd_tmp
execute as @e[tag=pcd_chunkpos] store result entity @s Pos[2] double 1 run scoreboard players get CHUNK_Z pcd_tmp


# Set initial values
scoreboard players set X pcd_tmp 0
scoreboard players set Z pcd_tmp 0

# Gametime
execute store result score GAMETIME pcd_tmp run time query gametime



# Set entity chunk positions if global is selected
execute if score FLAG_GLOBAL pcd_tmp matches 1 if score DIMENSION pcd_tmp matches -1 run tag @e[type=!player,tag=!pcd_all,nbt={Dimension:-1}] add pcd_in_chunk
execute if score FLAG_GLOBAL pcd_tmp matches 1 if score DIMENSION pcd_tmp matches 0 run tag @e[type=!player,tag=!pcd_all,nbt={Dimension:0}] add pcd_in_chunk
execute if score FLAG_GLOBAL pcd_tmp matches 1 if score DIMENSION pcd_tmp matches 1 run tag @e[type=!player,tag=!pcd_all,nbt={Dimension:1}] add pcd_in_chunk
# Get entity positions
execute if score FLAG_GLOBAL pcd_tmp matches 1 as @e[tag=pcd_in_chunk] store result score @s pcd_chunk_x run data get entity @s Pos[0] 0.0625
execute if score FLAG_GLOBAL pcd_tmp matches 1 as @e[tag=pcd_in_chunk] store result score @s pcd_chunk_z run data get entity @s Pos[2] 0.0625


# Set needed counter to be decreased
scoreboard players set NEEDED pcd_tmp -1

execute if score X pcd_tmp < SIZE_X pcd_tmp if score Z pcd_tmp < SIZE_Z pcd_tmp as @e[tag=pcd_chunkpos,limit=1] run function zzz_chunkdisplay:loop_detect_chunk/step


# Cleanup
kill @e[tag=pcd_tmp]
