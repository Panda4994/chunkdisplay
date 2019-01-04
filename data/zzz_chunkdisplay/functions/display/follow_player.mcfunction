# Get followed position
execute store result score @s pcd_center_x run data get entity @e[tag=pcd_followed,sort=nearest,limit=1] Pos[0] 0.0625
execute store result score @s pcd_center_z run data get entity @e[tag=pcd_followed,sort=nearest,limit=1] Pos[2] 0.0625
execute store result score @s pcd_dimension run data get entity @e[tag=pcd_followed,sort=nearest,limit=1] Dimension 1

function zzz_chunkdisplay:display/chunkpos_x_update
function zzz_chunkdisplay:display/chunkpos_z_update
