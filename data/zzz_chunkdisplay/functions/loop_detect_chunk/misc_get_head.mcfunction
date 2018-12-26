#/
# Get the head of a player
#
# @param as		Player to get the head of
# @param at		Position of the skull
#/

summon minecraft:armor_stand ~ -2 ~ {Tags:[pcd_all,pcd_playerhead],Marker:1b,Invisible:1b,Silent:1b}

loot replace entity @e[tag=pcd_playerhead] armor.head loot chunkdisplay:playerhead

data modify block ~ ~ ~ Owner.Name set from entity @e[tag=pcd_playerhead,limit=1] ArmorItems[3].tag.SkullOwner.Name

kill @e[tag=pcd_playerhead]
