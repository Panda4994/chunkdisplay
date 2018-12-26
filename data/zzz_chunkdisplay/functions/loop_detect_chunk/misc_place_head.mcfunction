# Get player rotation
execute store result score ROTATION pcd_tmp run data get entity @s Rotation[0] 4

# Calculate actual rotation
scoreboard players add ROTATION pcd_tmp 765
scoreboard players operation ROTATION pcd_tmp %= 1440 pcd_const
scoreboard players operation ROTATION pcd_tmp /= 90 pcd_const

execute if score ROTATION pcd_tmp matches 0 run setblock ~ ~ ~ minecraft:player_head[rotation=0]
execute if score ROTATION pcd_tmp matches 1 run setblock ~ ~ ~ minecraft:player_head[rotation=1]
execute if score ROTATION pcd_tmp matches 2 run setblock ~ ~ ~ minecraft:player_head[rotation=2]
execute if score ROTATION pcd_tmp matches 3 run setblock ~ ~ ~ minecraft:player_head[rotation=3]
execute if score ROTATION pcd_tmp matches 4 run setblock ~ ~ ~ minecraft:player_head[rotation=4]
execute if score ROTATION pcd_tmp matches 5 run setblock ~ ~ ~ minecraft:player_head[rotation=5]
execute if score ROTATION pcd_tmp matches 6 run setblock ~ ~ ~ minecraft:player_head[rotation=6]
execute if score ROTATION pcd_tmp matches 7 run setblock ~ ~ ~ minecraft:player_head[rotation=7]
execute if score ROTATION pcd_tmp matches 8 run setblock ~ ~ ~ minecraft:player_head[rotation=8]
execute if score ROTATION pcd_tmp matches 9 run setblock ~ ~ ~ minecraft:player_head[rotation=9]
execute if score ROTATION pcd_tmp matches 10 run setblock ~ ~ ~ minecraft:player_head[rotation=10]
execute if score ROTATION pcd_tmp matches 11 run setblock ~ ~ ~ minecraft:player_head[rotation=11]
execute if score ROTATION pcd_tmp matches 12 run setblock ~ ~ ~ minecraft:player_head[rotation=12]
execute if score ROTATION pcd_tmp matches 13 run setblock ~ ~ ~ minecraft:player_head[rotation=13]
execute if score ROTATION pcd_tmp matches 14 run setblock ~ ~ ~ minecraft:player_head[rotation=14]
execute if score ROTATION pcd_tmp matches 15 run setblock ~ ~ ~ minecraft:player_head[rotation=15]
