# Color number
# Flags meaning: AFLP
scoreboard players set CHUNK pcd_tmp 0

# Ligth/Dark
scoreboard players operation CHUNK pcd_tmp += X pcd_tmp
scoreboard players operation CHUNK pcd_tmp += Z pcd_tmp
scoreboard players operation CHUNK pcd_tmp %= 2 pcd_const

# Loaded
execute at @s if block ~ ~ ~ #chunkdisplay:chunk_loaded run scoreboard players operation CHUNK pcd_tmp += 2 pcd_const

# Force Loaded (Bug report!)
execute at @s if block ~ ~ ~ #chunkdisplay:chunk_forceloaded run scoreboard players operation CHUNK pcd_tmp += 4 pcd_const

# Active
execute at @s if block ~ ~ ~ #chunkdisplay:chunk_loaded if block ~2 ~ ~2 #chunkdisplay:chunk_loaded if block ~-2 ~ ~-2 #chunkdisplay:chunk_loaded if block ~2 ~ ~-2 #chunkdisplay:chunk_loaded if block ~-2 ~ ~2 #chunkdisplay:chunk_loaded if block ~2 ~ ~ #chunkdisplay:chunk_loaded if block ~-2 ~ ~ #chunkdisplay:chunk_loaded if block ~ ~ ~2 #chunkdisplay:chunk_loaded if block ~ ~ ~-2 #chunkdisplay:chunk_loaded if block ~2 ~ ~1 #chunkdisplay:chunk_loaded if block ~-2 ~ ~-1 #chunkdisplay:chunk_loaded if block ~1 ~ ~2 #chunkdisplay:chunk_loaded if block ~-1 ~ ~-2 #chunkdisplay:chunk_loaded if block ~2 ~ ~-1 #chunkdisplay:chunk_loaded if block ~-2 ~ ~1 #chunkdisplay:chunk_loaded if block ~-1 ~ ~2 #chunkdisplay:chunk_loaded if block ~1 ~ ~-2 #chunkdisplay:chunk_loaded if block ~1 ~ ~1 #chunkdisplay:chunk_loaded if block ~-1 ~ ~-1 #chunkdisplay:chunk_loaded if block ~1 ~ ~-1 #chunkdisplay:chunk_loaded if block ~-1 ~ ~1 #chunkdisplay:chunk_loaded if block ~1 ~ ~ #chunkdisplay:chunk_loaded if block ~ ~ ~1 #chunkdisplay:chunk_loaded if block ~-1 ~ ~ #chunkdisplay:chunk_loaded if block ~ ~ ~-1 #chunkdisplay:chunk_loaded run scoreboard players operation CHUNK pcd_tmp += 8 pcd_const



# Set colors
execute at @s run setblock ~ ~ ~ red_concrete

# Unloaded
execute if score CHUNK pcd_tmp matches 0 at @s run setblock ~ ~ ~ black_concrete
execute if score CHUNK pcd_tmp matches 1 at @s run setblock ~ ~ ~ black_wool

# Loaded, lazy
execute if score CHUNK pcd_tmp matches 2 at @s run setblock ~ ~ ~ blue_concrete
execute if score CHUNK pcd_tmp matches 3 at @s run setblock ~ ~ ~ light_blue_concrete

# Forceloaded, but not loaded
# execute if score CHUNK pcd_tmp matches 4 at @s run setblock ~ ~ ~ red_concrete
# execute if score CHUNK pcd_tmp matches 5 at @s run setblock ~ ~ ~ red_concrete

# Forceloaded, loaded, lazy
execute if score CHUNK pcd_tmp matches 6 at @s run setblock ~ ~ ~ purple_concrete
execute if score CHUNK pcd_tmp matches 7 at @s run setblock ~ ~ ~ magenta_concrete

# Active unloaded
# execute if score CHUNK pcd_tmp matches 8 at @s run setblock ~ ~ ~ red_concrete
# execute if score CHUNK pcd_tmp matches 9 at @s run setblock ~ ~ ~ red_concrete

# Loaded, active
execute if score CHUNK pcd_tmp matches 10 at @s run setblock ~ ~ ~ green_concrete
execute if score CHUNK pcd_tmp matches 11 at @s run setblock ~ ~ ~ lime_concrete

# Active, forcloaded, but not loaded
# execute if score CHUNK pcd_tmp matches 12 at @s run setblock ~ ~ ~ red_concrete
# execute if score CHUNK pcd_tmp matches 13 at @s run setblock ~ ~ ~ red_concrete

# Loaded, active, forceloaded
execute if score CHUNK pcd_tmp matches 14 at @s run setblock ~ ~ ~ orange_concrete
execute if score CHUNK pcd_tmp matches 15 at @s run setblock ~ ~ ~ yellow_concrete
