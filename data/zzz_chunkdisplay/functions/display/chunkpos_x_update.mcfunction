#/
# Update the x-corner position of the chunk area to the center of the according chunk
#
# @param as @s		Display anker to perform on
#/


scoreboard players operation @s pcd_chunk_x = @s pcd_center_x

scoreboard players operation @s pcd_chunk_x -= @s pcd_radius_x

scoreboard players operation @s pcd_chunk_x *= 16 pcd_const

scoreboard players operation @s pcd_chunk_x += 8 pcd_const
