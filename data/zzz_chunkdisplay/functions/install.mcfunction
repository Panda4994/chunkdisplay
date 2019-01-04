# Gamerules
gamerule maxCommandChainLength 10000000
gamerule doTileDrops false
gamerule sendCommandFeedback false


# Scoreboard setup
scoreboard objectives add pcd_const dummy
scoreboard objectives add pcd_tmp dummy
scoreboard objectives add pcd_defaults dummy


# Settings objectives
scoreboard objectives add pcd_radius_x dummy
scoreboard objectives add pcd_radius_z dummy

scoreboard objectives add pcd_size_x dummy
scoreboard objectives add pcd_size_z dummy

scoreboard objectives add pcd_center_x dummy
scoreboard objectives add pcd_center_z dummy

scoreboard objectives add pcd_display_x dummy
scoreboard objectives add pcd_display_z dummy

scoreboard objectives add pcd_chunk_x dummy
scoreboard objectives add pcd_chunk_z dummy

scoreboard objectives add pcd_delay dummy
scoreboard objectives add pcd_delay_primer dummy

scoreboard objectives add pcd_delay_X_00 dummy
scoreboard objectives add pcd_delay_0_X0 dummy
scoreboard objectives add pcd_delay_0_0X dummy

scoreboard objectives add pcd_gametime dummy
scoreboard objectives add pcd_updates dummy
scoreboard objectives add pcd_dimension dummy

scoreboard objectives add pcd_needed dummy

# Init
scoreboard players set INT_MIN pcd_const -2147483648
scoreboard players set 0 pcd_const 0
scoreboard players set 1 pcd_const 1
scoreboard players set 2 pcd_const 2
scoreboard players set 4 pcd_const 4
scoreboard players set 5 pcd_const 5
scoreboard players set 8 pcd_const 8
scoreboard players set 10 pcd_const 10
scoreboard players set 16 pcd_const 16
scoreboard players set 90 pcd_const 90
scoreboard players set 100 pcd_const 100
scoreboard players set 1440 pcd_const 1440


scoreboard players set RADIUS_X pcd_defaults 8
scoreboard players set RADIUS_Z pcd_defaults 8

scoreboard players set FLAG_FORCE pcd_defaults 0
scoreboard players set FLAG_ENTITY pcd_defaults 0
scoreboard players set FLAG_GLOBAL pcd_defaults 0
scoreboard players set FLAG_PLAYER pcd_defaults 0
scoreboard players set FLAG_LAZY pcd_defaults 1
scoreboard players set FLAG_FOLLOW pcd_defaults 0

scoreboard players set DELAY pcd_defaults 20


scoreboard players set VERSION pcd_defaults 1


scoreboard players set ALLOW_FORCELOAD pcd_defaults 0
function zzz_chunkdisplay:check_forceload_allowed
