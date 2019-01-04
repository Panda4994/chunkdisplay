execute at @s run function zzz_chunkdisplay:loop_prepare_lazy_detect/body

execute at @s run tp ~16 ~ ~
scoreboard players operation X pcd_tmp += 1 pcd_const


execute if score X pcd_tmp >= SIZE_X pcd_tmp at @s run tp ~ ~ ~16
execute if score X pcd_tmp >= SIZE_X pcd_tmp store result entity @s Pos[0] double 1 run scoreboard players get CHUNK_X pcd_tmp

execute if score X pcd_tmp >= SIZE_X pcd_tmp run scoreboard players operation Z pcd_tmp += 1 pcd_const
execute if score X pcd_tmp >= SIZE_X pcd_tmp run scoreboard players set X pcd_tmp 0

execute if score Z pcd_tmp < SIZE_Z pcd_tmp run function zzz_chunkdisplay:loop_prepare_lazy_detect/step
