#/
# Update the values of a lazy query area effect cloud
#
# @param @s			Lazy query area effect cloud to update
# @param score NEEDED pcd_tmp	Value added to the needed counter of the entity. If <= 0 it's deleted
#/

execute store result score AGE pcd_tmp run data get entity @s Age

scoreboard players operation TICKS_PASSED pcd_tmp = GAMETIME pcd_tmp
scoreboard players operation TICKS_PASSED pcd_tmp -= @s pcd_gametime

execute if score TICKS_PASSED pcd_tmp > 2 pcd_const run scoreboard players set @s pcd_needed 0

execute store result score @s pcd_chunk_x run data get entity @s Pos[0] 0.0625
execute store result score @s pcd_chunk_z run data get entity @s Pos[2] 0.0625

#execute if score @s pcd_chunk_x matches 7 if score @s pcd_chunk_z matches -1 run scoreboard players set @s whoami 7
#execute if score @s pcd_chunk_x matches 8 if score @s pcd_chunk_z matches -1 run scoreboard players set @s whoami 8

#execute if score @s pcd_chunk_x matches 7 if score @s pcd_chunk_z matches -1 run tellraw @a ["",{"text":"7-1_Gametime: ","color":"dark_green"},{"score":{"name":"GAMETIME","objective":"pcd_tmp"},"color":"blue"},{"text":", Ticks_passed:","color":"dark_green"},{"score":{"name":"TICKS_PASSED","objective":"pcd_tmp"},"color":"blue"},{"text":", Age: ","color":"dark_green"},{"score":{"name":"AGE","objective":"pcd_tmp"},"color":"blue"}]

#execute if score @s pcd_chunk_x matches 8 if score @s pcd_chunk_z matches -1 run tellraw @a ["",{"text":"8-1_Gametime: ","color":"dark_green"},{"score":{"name":"GAMETIME","objective":"pcd_tmp"},"color":"blue"},{"text":", Ticks_passed:","color":"dark_green"},{"score":{"name":"TICKS_PASSED","objective":"pcd_tmp"},"color":"blue"},{"text":", Age: ","color":"dark_green"},{"score":{"name":"AGE","objective":"pcd_tmp"},"color":"blue"}]


execute unless score TICKS_PASSED pcd_tmp matches 1 run tag @s remove pcd_valid
execute if score TICKS_PASSED pcd_tmp matches 1 run tag @s add pcd_valid

execute if score TICKS_PASSED pcd_tmp = AGE pcd_tmp if score TICKS_PASSED pcd_tmp >= 1 pcd_const run tag @s add pcd_active
execute unless score TICKS_PASSED pcd_tmp = AGE pcd_tmp if score TICKS_PASSED pcd_tmp >= 1 pcd_const run tag @s remove pcd_active

execute if entity @s[tag=!pcd_valid] run tag @s remove pcd_active

scoreboard players operation @s pcd_needed += NEEDED pcd_tmp

execute if score @s pcd_needed < 1 pcd_const run kill @s

# Reset values
execute if score NEEDED pcd_tmp >= 1 pcd_const run scoreboard players operation @s pcd_gametime = GAMETIME pcd_tmp
execute if score NEEDED pcd_tmp >= 1 pcd_const run data merge entity @s {Age:0s}
