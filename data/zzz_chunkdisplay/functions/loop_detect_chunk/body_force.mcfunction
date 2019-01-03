#/
# @param as		Marker entity for chunk position
# @param at		Chunk position
#/

# Currently not working due to bug (TODO bug report)
#execute store result score FORCE pcd_tmp run forceload query ~ ~


# Debug code
#scoreboard players set FORCE_NX pcd_tmp -16
#scoreboard players set FORCE_NZ pcd_tmp -16
#scoreboard players set FORCE_PX pcd_tmp -16
#scoreboard players set FORCE_PZ pcd_tmp 17
execute store result score POS_X pcd_tmp run data get entity @s Pos[0] 0.0625
execute store result score POS_Z pcd_tmp run data get entity @s Pos[2] 0.0625
scoreboard players set FORCE pcd_tmp 0
execute if score POS_X pcd_tmp >= FORCE_NX pcd_tmp if score POS_Z pcd_tmp >= FORCE_NZ pcd_tmp if score POS_X pcd_tmp <= FORCE_PX pcd_tmp if score POS_Z pcd_tmp <= FORCE_PZ pcd_tmp run scoreboard players set FORCE pcd_tmp 1


execute if score FORCE pcd_tmp matches 1 run scoreboard players operation CHUNK pcd_tmp += 4 pcd_const
