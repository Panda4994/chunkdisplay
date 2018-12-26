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

# Set colors
execute if score CHUNK pcd_tmp matches 0 at @s run setblock ~ ~ ~ black_concrete
execute if score CHUNK pcd_tmp matches 1 at @s run setblock ~ ~ ~ black_wool

execute if score CHUNK pcd_tmp matches 2 at @s run setblock ~ ~ ~ gray_concrete
execute if score CHUNK pcd_tmp matches 3 at @s run setblock ~ ~ ~ cyan_terracotta

execute if score CHUNK pcd_tmp matches 4 at @s run setblock ~ ~ ~ red_concrete
execute if score CHUNK pcd_tmp matches 5 at @s run setblock ~ ~ ~ red_concrete

execute if score CHUNK pcd_tmp matches 6 at @s run setblock ~ ~ ~ light_gray_concrete
execute if score CHUNK pcd_tmp matches 7 at @s run setblock ~ ~ ~ white_concrete

# Detect entities
execute as @s[tag=pcd_flag_entity] run function zzz_chunkdisplay:loop_detect_chunk/body_entity

# Detect players
execute as @s[tag=pcd_flag_player] run function zzz_chunkdisplay:loop_detect_chunk/body_player
