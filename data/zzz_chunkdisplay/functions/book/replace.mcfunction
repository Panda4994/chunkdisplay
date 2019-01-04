#/
# (Re)places the control book in the main hand of a player
#
# @param @s	Player to replace the book in
#/

execute if score ALLOW_FORCELOAD pcd_defaults matches 0 run function zzz_chunkdisplay:book/replace_noforceload

execute if score ALLOW_FORCELOAD pcd_defaults matches 1 run function zzz_chunkdisplay:book/replace_forceload
