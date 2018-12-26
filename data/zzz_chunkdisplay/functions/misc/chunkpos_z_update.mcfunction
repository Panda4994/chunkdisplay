#/
# Update the z-corner position of the chunk area to the center of the according chunk
#
# @param as @s		Display anker to perform on
#/


scoreboard players operation @s pcd_chunk_z = @s pcd_center_z

scoreboard players operation @s pcd_chunk_z -= @s pcd_radius_z

scoreboard players operation @s pcd_chunk_z *= 16 pcd_const

scoreboard players operation @s pcd_chunk_z += 8 pcd_const
