title @s times 10 20 17
title @s subtitle ["",{"text":"Structure déja restaurée","color":"dark_red"}]
title @s title [""]
scoreboard players set #sr_knowPlayer g_check 1
$execute in minecraft:overworld positioned 0 930 0 run scoreboard players operation @e[type=marker,name=sr_timeStructure,scores={sr_idZone=$(idZone),g_id=$(idPlayer)},distance=..0.1,limit=1] sr_nb = sr_time_before_reload_structure gamerule