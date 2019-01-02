execute unless entity @s[tag=pcd_flag_lazy] run function zzz_chunkdisplay:display/update_display
execute if entity @s[tag=pcd_flag_lazy] run function zzz_chunkdisplay:update_display_lazy
