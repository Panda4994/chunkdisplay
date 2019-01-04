#/
# Update display position (negative corner of display)
#
# @param as @s			Display anker to perform on
# @param at @s			Display center is the execution position
#/

execute store result score @s pcd_display_x run data get entity @s Pos[0] 2

scoreboard players operation @s pcd_display_x -= @s pcd_size_x

scoreboard players add @s pcd_display_x 1
