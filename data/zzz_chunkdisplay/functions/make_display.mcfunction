# Display marker
execute positioned ~.5 ~ ~.5 align x align y align z run summon minecraft:armor_stand ~ ~ ~ {Tags:[pcd_all,pcd_center,pcd_center_new],CustomNameVisible:0b,CustomName:"\"Chunkdisplay\"",NoGravity:1b,Invisible:1b,Marker:1b}

execute as @e[tag=pcd_center_new] at @s run function zzz_chunkdisplay:load_defaults

execute as @e[tag=pcd_center_new] at @s run function zzz_chunkdisplay:update_display

tag @e[tag=pcd_center_new] remove pcd_center_new
