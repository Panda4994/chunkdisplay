function zzz_chunkdisplay:loop_detect_chunk/body

execute at @s run tp ~1 ~ ~
execute as @e[tag=pcd_chunkpos,limit=1] at @s run tp ~16 ~ ~
scoreboard players operation X pcd_tmp += 1 pcd_const


execute if score X pcd_tmp >= SIZE_X pcd_tmp at @s run tp ~ ~ ~1
execute if score X pcd_tmp >= SIZE_X pcd_tmp as @e[tag=pcd_chunkpos,limit=1] at @s run tp ~ ~ ~16

execute if score X pcd_tmp >= SIZE_X pcd_tmp store result entity @s Pos[0] double 0.5 run scoreboard players get DISPLAY_X pcd_tmp
execute if score X pcd_tmp >= SIZE_X pcd_tmp as @e[tag=pcd_chunkpos,limit=1] store result entity @s Pos[0] double 1 run scoreboard players get CHUNK_X pcd_tmp

execute if score X pcd_tmp >= SIZE_X pcd_tmp run scoreboard players operation Z pcd_tmp += 1 pcd_const
execute if score X pcd_tmp >= SIZE_X pcd_tmp run scoreboard players set X pcd_tmp 0

execute if score Z pcd_tmp < SIZE_Z pcd_tmp run function zzz_chunkdisplay:loop_detect_chunk/step
