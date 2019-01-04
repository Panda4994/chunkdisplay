# Kill leftover entities
kill @e[tag=pcd_all]

# Remove scoreboards
scoreboard objectives remove pcd_const
scoreboard objectives remove pcd_tmp
scoreboard objectives remove pcd_defaults

scoreboard objectives remove pcd_radius_x
scoreboard objectives remove pcd_radius_z

scoreboard objectives remove pcd_size_x
scoreboard objectives remove pcd_size_z

scoreboard objectives remove pcd_center_x
scoreboard objectives remove pcd_center_z

scoreboard objectives remove pcd_display_x
scoreboard objectives remove pcd_display_z

scoreboard objectives remove pcd_chunk_x
scoreboard objectives remove pcd_chunk_z

scoreboard objectives remove pcd_delay
scoreboard objectives remove pcd_delay_primer

scoreboard objectives remove pcd_delay_X_00
scoreboard objectives remove pcd_delay_0_X0
scoreboard objectives remove pcd_delay_0_0X

scoreboard objectives remove pcd_gametime
scoreboard objectives remove pcd_updates
scoreboard objectives remove pcd_dimension

scoreboard objectives remove pcd_needed

# Gamerules are not reset.
