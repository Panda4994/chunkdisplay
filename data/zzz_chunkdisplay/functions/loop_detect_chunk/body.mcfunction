#/
# @param as		Marker entity for chunk position
# @param at		Display position
#/


# Flag meanings:
# 00001: Primer
# 00010: Loaded
# 00100: Force
# 01000: Active/Lazy
# 10000: Lazy/Active Known

# Color number
scoreboard players set CHUNK pcd_tmp 0

# Ligth/Dark
scoreboard players operation CHUNK pcd_tmp += X pcd_tmp
scoreboard players operation CHUNK pcd_tmp += Z pcd_tmp
scoreboard players operation CHUNK pcd_tmp %= 2 pcd_const

# Loaded
execute at @s unless block ~ ~ ~ air{N:O} run scoreboard players operation CHUNK pcd_tmp += 2 pcd_const

# Force Loaded
execute if score FLAG_FORCE pcd_tmp matches 1 at @s run function zzz_chunkdisplay:loop_detect_chunk/body_force

# Active/lazy Loaded
execute if score FLAG_LAZY pcd_tmp matches 1 at @s positioned ~-0.05 0 ~-0.05 as @e[tag=pcd_lazy_query,dx=0.1,dy=0.1,dz=0.1,limit=1] at @s run function zzz_chunkdisplay:loop_detect_chunk/body_lazy

setblock ~ ~ ~ red_concrete

# Set colors
# Unloaded
execute if score CHUNK pcd_tmp matches 0 run setblock ~ ~ ~ black_concrete
execute if score CHUNK pcd_tmp matches 1 run setblock ~ ~ ~ black_wool

# Loaded, unknown
execute if score CHUNK pcd_tmp matches 2 run setblock ~ ~ ~ gray_concrete
execute if score CHUNK pcd_tmp matches 3 run setblock ~ ~ ~ cyan_terracotta

# Forceloaded, unknown
execute if score CHUNK pcd_tmp matches 6 run setblock ~ ~ ~ light_gray_concrete
execute if score CHUNK pcd_tmp matches 7 run setblock ~ ~ ~ white_concrete

# Loaded Lazy
execute if score CHUNK pcd_tmp matches 18 run setblock ~ ~ ~ blue_concrete
execute if score CHUNK pcd_tmp matches 19 run setblock ~ ~ ~ light_blue_concrete

# Loaded Active
execute if score CHUNK pcd_tmp matches 26 run setblock ~ ~ ~ green_concrete
execute if score CHUNK pcd_tmp matches 27 run setblock ~ ~ ~ lime_concrete

# Loaded Lazy, force
execute if score CHUNK pcd_tmp matches 22 run setblock ~ ~ ~ purple_concrete
execute if score CHUNK pcd_tmp matches 23 run setblock ~ ~ ~ magenta_concrete

# Loaded Active, force
execute if score CHUNK pcd_tmp matches 30 run setblock ~ ~ ~ orange_concrete
execute if score CHUNK pcd_tmp matches 31 run setblock ~ ~ ~ yellow_concrete


# Detect entities
execute if score FLAG_ENTITY pcd_tmp matches 1 run function zzz_chunkdisplay:loop_detect_chunk/body_entity

# Detect players
execute if score FLAG_PLAYER pcd_tmp matches 1 run function zzz_chunkdisplay:loop_detect_chunk/body_player
