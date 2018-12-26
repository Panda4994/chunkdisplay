#/
# Sets the refresh delay and updates all needed values
#
# @param as @s			Display anker to perform on
# @param score TICKS pcd_tmp	Sleep delay in ticks, if less than 1 set to 1
#/

execute if score TICKS pcd_tmp <= 0 pcd_const run scoreboard players set TICKS pcd_tmp 1

tag @s add pcd_flag_refresh

scoreboard players operation @s pcd_delay = TICKS pcd_tmp

execute store result score @s pcd_delay_primer run data get entity @s UUIDLeast 0.00000000023283064365386963
scoreboard players operation @s pcd_delay_primer %= TICKS pcd_tmp

scoreboard players operation TICKS pcd_tmp *= 5 pcd_const

scoreboard players operation @s pcd_delay_X_00 = TICKS pcd_tmp
scoreboard players operation @s pcd_delay_X_00 /= 100 pcd_const

scoreboard players operation @s pcd_delay_0_X0 = TICKS pcd_tmp
scoreboard players operation @s pcd_delay_0_X0 /= 10 pcd_const
scoreboard players operation @s pcd_delay_0_X0 %= 10 pcd_const

scoreboard players operation @s pcd_delay_0_0X = TICKS pcd_tmp
scoreboard players operation @s pcd_delay_0_0X %= 10 pcd_const
