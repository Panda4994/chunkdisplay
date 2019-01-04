give @p minecraft:written_book{"pages":["[\"\",{\"color\":\"dark_blue\",\"text\":\"\\u27d0 \",\"bold\":true},{\"text\":\"\\u276c\",\"color\":\"dark_gray\"},{\"text\":\"Create\",\"hoverEvent\":{\"value\":\"\\u2192 Place a chunk display at your current location \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/display_create\",\"action\":\"run_command\"}},{\"text\":\"\\u276d\",\"color\":\"dark_gray\"},\" \",{\"text\":\"\\u276c\",\"color\":\"dark_gray\"},{\"text\":\"Remove\",\"hoverEvent\":{\"value\":\"\\u2192 Remove the closest display \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/display_remove\",\"action\":\"run_command\"}},{\"text\":\"\\u276d\",\"color\":\"dark_gray\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"color\":\"dark_blue\",\"text\":\"\\u27d0 \",\"bold\":true},{\"text\":\"Refresh\",\"color\":\"dark_blue\",\"hoverEvent\":{\"value\":\"Refresh the display every n seconds\",\"action\":\"show_text\"}},\" \",{\"text\":\"\\u27f3\",\"hoverEvent\":{\"value\":\"\\u2192 Refresh display and book \\u2190\",\"action\":\"show_text\"},\"color\":\"dark_aqua\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/refresh_update\",\"action\":\"run_command\"},\"bold\":true},\" \",{\"text\":\"\\u258e\\u258e\",\"hoverEvent\":{\"value\":\"\\u2192 Pause automatic refresh \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/refresh_pause\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u25b6\",\"hoverEvent\":{\"value\":\"\\u2192 Continue automatic refresh \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/refresh_play\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u276c\",\"color\":\"dark_gray\"},{\"text\":\"1s\",\"hoverEvent\":{\"value\":\"\\u2192 Set refresh delay to 1 second \\u2190\",\"action\":\"show_text\"},\"color\":\"dark_aqua\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/refresh_set_1\",\"action\":\"run_command\"}},{\"text\":\"\\u276d\",\"color\":\"dark_gray\"},{\"text\":\"\\n  \",\"color\":\"reset\"},{\"text\":\"\\u207b\\u207b\\u207b\",\"hoverEvent\":{\"value\":\"\\u2192 Decrease refresh delay by 5 seconds \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/refresh_dec_5\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u207b\\u207b\",\"hoverEvent\":{\"value\":\"\\u2192 Decrease refresh delay by 0.5 seconds \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/refresh_dec_0_5\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u207b\",\"hoverEvent\":{\"value\":\"\\u2192 Decrease refresh delay by 0.05 seconds \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/refresh_dec_0_05\",\"action\":\"run_command\"}},\" \",{\"text\":\"[\",\"color\":\"dark_gray\"},{\"score\":{\"name\":\"@e[tag=pcd_center,sort=nearest,limit=1]\",\"objective\":\"pcd_delay_X_00\"},\"color\":\"gold\",\"hoverEvent\":{\"value\":\"Current refresh delay in seconds\",\"action\":\"show_text\"}},{\"text\":\".\",\"color\":\"gold\",\"hoverEvent\":{\"value\":\"Current refresh delay in seconds\",\"action\":\"show_text\"}},{\"score\":{\"name\":\"@e[tag=pcd_center,sort=nearest,limit=1]\",\"objective\":\"pcd_delay_0_X0\"},\"color\":\"gold\",\"hoverEvent\":{\"value\":\"Current refresh delay in seconds\",\"action\":\"show_text\"}},{\"score\":{\"name\":\"@e[tag=pcd_center,sort=nearest,limit=1]\",\"objective\":\"pcd_delay_0_0X\"},\"color\":\"gold\",\"hoverEvent\":{\"value\":\"Current refresh delay in seconds\",\"action\":\"show_text\"}},{\"text\":\"]\",\"color\":\"dark_gray\"},\" \",{\"text\":\"\\u207a\",\"hoverEvent\":{\"value\":\"\\u2192 Increase refresh delay by 0.05 seconds \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/refresh_inc_0_05\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u207a\\u207a\",\"hoverEvent\":{\"value\":\"\\u2192 Increase refresh delay by 0.5 seconds \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/refresh_inc_0_5\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u207a\\u207a\\u207a\",\"hoverEvent\":{\"value\":\"\\u2192 Increase refresh delay by 5 seconds \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/refresh_inc_5\",\"action\":\"run_command\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"color\":\"dark_blue\",\"text\":\"\\u27d0 \",\"bold\":true},{\"text\":\"Radius\",\"color\":\"dark_blue\",\"hoverEvent\":{\"value\":\"Apothem of the monitored area (half the side length of the square)\",\"action\":\"show_text\"}},\" \",{\"text\":\"\\u276c\",\"color\":\"dark_gray\"},{\"text\":\"8\",\"hoverEvent\":{\"value\":\"\\u2192 Set the apothem (half the side length of the square) to 8 \\u2190\",\"action\":\"show_text\"},\"color\":\"dark_aqua\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_set_8\",\"action\":\"run_command\"}},{\"text\":\"\\u276d\",\"color\":\"dark_gray\"},\" \",{\"text\":\"\\u276c\",\"color\":\"dark_gray\"},{\"text\":\"16\",\"hoverEvent\":{\"value\":\"\\u2192 Set the apothem (half the side length of the square) to 16 \\u2190\",\"action\":\"show_text\"},\"color\":\"dark_aqua\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_set_16\",\"action\":\"run_command\"}},{\"text\":\"\\u276d\",\"color\":\"dark_gray\"},\" \",{\"text\":\"\\u276c\",\"color\":\"dark_gray\"},{\"text\":\"32\",\"hoverEvent\":{\"value\":\"\\u2192 Set the apothem (half the side length of the square) to 32 \\u2190\",\"action\":\"show_text\"},\"color\":\"dark_aqua\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_set_32\",\"action\":\"run_command\"}},{\"text\":\"\\u276d\",\"color\":\"dark_gray\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"color\":\"blue\",\"text\":\"\\u02e3\",\"bold\":true},\" \",{\"text\":\"\\u207b\\u207b\\u207b\",\"hoverEvent\":{\"value\":\"\\u2192 Decrease X-radius by 16 \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_x_dec_16\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u207b\\u207b\",\"hoverEvent\":{\"value\":\"\\u2192 Decrease X-radius by 8 \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_x_dec_8\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u207b\",\"hoverEvent\":{\"value\":\"\\u2192 Decrease X-radius by 1 \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_x_dec_1\",\"action\":\"run_command\"}},\" \",{\"text\":\"[\",\"color\":\"dark_gray\"},{\"score\":{\"name\":\"@e[tag=pcd_center,sort=nearest,limit=1]\",\"objective\":\"pcd_radius_x\"},\"color\":\"gold\",\"hoverEvent\":{\"value\":\"Half the side length in X-direction\",\"action\":\"show_text\"}},{\"text\":\"]\",\"color\":\"dark_gray\"},\" \",{\"text\":\"\\u207a\",\"hoverEvent\":{\"value\":\"\\u2192 Increase X-radius by 1 \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_x_inc_1\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u207a\\u207a\",\"hoverEvent\":{\"value\":\"\\u2192 Increase X-radius by 8 \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_x_inc_8\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u207a\\u207a\\u207a\",\"hoverEvent\":{\"value\":\"\\u2192 Increase X-radius by 16 \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_x_inc_16\",\"action\":\"run_command\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"color\":\"blue\",\"text\":\"\\u1dbb\",\"bold\":true},\" \",{\"text\":\"\\u207b\\u207b\\u207b\",\"hoverEvent\":{\"value\":\"\\u2192 Decrease Z-radius by 16 \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_z_dec_16\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u207b\\u207b\",\"hoverEvent\":{\"value\":\"\\u2192 Decrease Z-radius by 8 \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_z_dec_8\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u207b\",\"hoverEvent\":{\"value\":\"\\u2192 Decrease Z-radius by 1 \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_z_dec_1\",\"action\":\"run_command\"}},\" \",{\"text\":\"[\",\"color\":\"dark_gray\"},{\"score\":{\"name\":\"@e[tag=pcd_center,sort=nearest,limit=1]\",\"objective\":\"pcd_radius_z\"},\"color\":\"gold\",\"hoverEvent\":{\"value\":\"Half the side length in Z-direction\",\"action\":\"show_text\"}},{\"text\":\"]\",\"color\":\"dark_gray\"},\" \",{\"text\":\"\\u207a\",\"hoverEvent\":{\"value\":\"\\u2192 Increase Z-radius by 1 \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_z_inc_1\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u207a\\u207a\",\"hoverEvent\":{\"value\":\"\\u2192 Increase Z-radius by 8 \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_z_inc_8\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u207a\\u207a\\u207a\",\"hoverEvent\":{\"value\":\"\\u2192 Increase Z-radius by 16 \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/radius_z_inc_16\",\"action\":\"run_command\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u2714\",\"hoverEvent\":{\"value\":\"\\u2192 Enable showing of lazy chunks \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/flag_lazy_on\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u2718\",\"hoverEvent\":{\"value\":\"\\u2192 Disable showing of lazy chunks \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/flag_lazy_off\",\"action\":\"run_command\"}},\" \",{\"text\":\"Show Lazy Chunks\",\"color\":\"blue\",\"hoverEvent\":{\"value\":\"Show lazy chunks as blue and entity processing chunks as green\",\"action\":\"show_text\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u2714 \\u2718 Show Forceloaded\",\"color\":\"gray\",\"hoverEvent\":{\"value\":\"/forceload query is not accessible\",\"action\":\"show_text\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u2714\",\"hoverEvent\":{\"value\":\"\\u2192 Enable showing of players \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/flag_player_on\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u2718\",\"hoverEvent\":{\"value\":\"\\u2192 Disable showing of players \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/flag_player_off\",\"action\":\"run_command\"}},\" \",{\"text\":\"Show Players\",\"color\":\"blue\",\"hoverEvent\":{\"value\":\"Show players as playerheads on the display\",\"action\":\"show_text\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u2714\",\"hoverEvent\":{\"value\":\"\\u2192 Enable showing of entities \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/flag_entity_on\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u2718\",\"hoverEvent\":{\"value\":\"\\u2192 Disable showing of entities \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/flag_entity_off\",\"action\":\"run_command\"}},\" \",{\"text\":\"Show Entities\",\"color\":\"blue\",\"hoverEvent\":{\"value\":\"Show entities as sea pickles on the display\",\"action\":\"show_text\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u2714\",\"hoverEvent\":{\"value\":\"\\u2192 Follow your position \\u2190\",\"action\":\"show_text\"},\"color\":\"green\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/flag_follow_on\",\"action\":\"run_command\"}},\" \",{\"text\":\"\\u2718\",\"hoverEvent\":{\"value\":\"\\u2192 Stop following any player \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/flag_follow_off\",\"action\":\"run_command\"}},\" \",{\"text\":\"Follow me!\",\"color\":\"blue\",\"hoverEvent\":{\"value\":\"Keep setting the center of the monitored area to your position\",\"action\":\"show_text\"}},{\"text\":\"\\n\",\"color\":\"reset\"}]","[\"\",{\"color\":\"dark_aqua\",\"text\":\"Chunkdisplay\",\"bold\":true},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"A tool to show which chunks are loaded.\",\"color\":\"gray\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"underlined\":true,\"text\":\"Video explanation\",\"hoverEvent\":{\"value\":\"\\u2192 https://www.youtube.com/watch?v=yw-BxLLd2PM \\u2190\",\"action\":\"show_text\"},\"color\":\"blue\",\"clickEvent\":{\"value\":\"https://www.youtube.com/watch?v=yw-BxLLd2PM\",\"action\":\"open_url\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"By \",\"color\":\"gray\"},{\"underlined\":true,\"text\":\"Panda4994\",\"hoverEvent\":{\"value\":\"\\u2192 http://www.youtube.com/Panda4994 \\u2190\",\"action\":\"show_text\"},\"color\":\"dark_blue\",\"clickEvent\":{\"value\":\"http://www.youtube.com/Panda4994\",\"action\":\"open_url\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"Special thanks to\",\"color\":\"gray\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"underlined\":true,\"text\":\"Meri the LapisDemon\",\"hoverEvent\":{\"value\":\"\\u2192 http://www.youtube.com/LapisDemon \\u2190\",\"action\":\"show_text\"},\"color\":\"dark_blue\",\"clickEvent\":{\"value\":\"http://www.youtube.com/LapisDemon\",\"action\":\"open_url\"}},{\"text\":\"\\n\\n\\n\",\"color\":\"reset\"},{\"text\":\"Tested in:\",\"color\":\"gray\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"1.13.2\",\"color\":\"dark_green\"},\", \",{\"text\":\"18w50a\",\"color\":\"dark_green\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"Version 1.2 | \",\"color\":\"gray\"},{\"text\":\"\\u276c\",\"color\":\"dark_gray\"},{\"text\":\"Uninstall\",\"hoverEvent\":{\"value\":\"\\u2192 Remove scoreboards and entities \\u2190\",\"action\":\"show_text\"},\"color\":\"red\",\"clickEvent\":{\"value\":\"/function zzz_chunkdisplay:book_cmd/uninstall\",\"action\":\"run_command\"}},{\"text\":\"\\u276d\",\"color\":\"dark_gray\"}]"],"display":{"Lore":["Place, remove and modify visualisations of the loaded chunks"]},"title":"Chunkdisplay Control","author":"Panda4994"}
