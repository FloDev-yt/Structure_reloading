$execute if score @e[type=marker,name=sr_timeStructure,scores={sr_idZone=$(idZone)},distance=..0.1,limit=1] sr_nb = sr_time_before_reload_structure gamerule run function structure_reloading:messages/waiting
execute if score #sr_knowPlayer g_check matches 2 run return 2
# if else
title @s times 10 25 25
$title @s subtitle ["",{"text":"Wait ","color":"dark_blue"},{"score":{"name":"@e[type=marker,name=sr_timeStructure,scores={sr_idZone=$(idZone)},distance=..0.1,limit=1]","objective":"sr_nb"},"color":"blue"},{"text":"s ","color":"blue"},{"text":"before restoration","color":"dark_blue"}]
title @s title [""]
scoreboard players set #sr_knowPlayer g_check 2