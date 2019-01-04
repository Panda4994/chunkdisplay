#/
# Update display position (negative corner of display)
#
# @param as @s			Display anker to perform on
# @param at @s			Display center is the execution position
#/

execute store result score @s pcd_display_z run data get entity @s Pos[2] 2

scoreboard players operation @s pcd_display_z -= @s pcd_size_z

scoreboard players add @s pcd_display_z 1
