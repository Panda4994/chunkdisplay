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
execute at @e[tag=pcd_chunkpos,limit=1] unless block ~ ~ ~ air{N:O} run scoreboard players operation CHUNK pcd_tmp += 2 pcd_const

# Force Loaded
execute as @s[tag=pcd_flag_force] run function zzz_chunkdisplay:loop_detect_chunk/body_force

# Active/lazy Loaded
execute if entity @s[tag=pcd_flag_lazy] at @e[tag=pcd_chunkpos,limit=1] positioned ~-0.05 0 ~-0.05 as @e[tag=pcd_lazy_query,dx=0.1,dy=0.1,dz=0.1,limit=1] at @s run function zzz_chunkdisplay:loop_detect_chunk/body_lazy

execute at @s run setblock ~ ~ ~ red_concrete

# Set colors
# Unloaded
execute if score CHUNK pcd_tmp matches 0 at @s run setblock ~ ~ ~ black_concrete
execute if score CHUNK pcd_tmp matches 1 at @s run setblock ~ ~ ~ black_wool

# Loaded, unknown
execute if score CHUNK pcd_tmp matches 2 at @s run setblock ~ ~ ~ gray_concrete
execute if score CHUNK pcd_tmp matches 3 at @s run setblock ~ ~ ~ cyan_terracotta

# Forceloaded, unknown
execute if score CHUNK pcd_tmp matches 6 at @s run setblock ~ ~ ~ light_gray_concrete
execute if score CHUNK pcd_tmp matches 7 at @s run setblock ~ ~ ~ white_concrete

# Loaded Lazy
execute if score CHUNK pcd_tmp matches 18 at @s run setblock ~ ~ ~ blue_concrete
execute if score CHUNK pcd_tmp matches 19 at @s run setblock ~ ~ ~ light_blue_concrete

# Loaded Active
execute if score CHUNK pcd_tmp matches 26 at @s run setblock ~ ~ ~ green_concrete
execute if score CHUNK pcd_tmp matches 27 at @s run setblock ~ ~ ~ lime_concrete

# Loaded Lazy, force
execute if score CHUNK pcd_tmp matches 22 at @s run setblock ~ ~ ~ purple_concrete
execute if score CHUNK pcd_tmp matches 23 at @s run setblock ~ ~ ~ magenta_concrete

# Loaded Active, force
execute if score CHUNK pcd_tmp matches 30 at @s run setblock ~ ~ ~ orange_concrete
execute if score CHUNK pcd_tmp matches 31 at @s run setblock ~ ~ ~ yellow_concrete


# Detect entities
execute as @s[tag=pcd_flag_entity] run function zzz_chunkdisplay:loop_detect_chunk/body_entity

# Detect players
execute as @s[tag=pcd_flag_player] run function zzz_chunkdisplay:loop_detect_chunk/body_player
