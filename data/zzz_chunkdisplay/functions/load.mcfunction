scoreboard objectives add pcd_defaults dummy
execute unless score VERSION pcd_defaults matches 102 run function zzz_chunkdisplay:install

function zzz_chunkdisplay:chat_greeting
