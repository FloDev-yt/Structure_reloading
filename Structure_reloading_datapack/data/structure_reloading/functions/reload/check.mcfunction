scoreboard players set #sr_knowPlayer g_check 0
$execute if entity @e[type=marker,name=sr_player,scores={g_id=$(idPlayer)},distance=..0.1,limit=1] run function structure_reloading:messages/not_reload {"idZone":$(idZone),"idPlayer":$(idPlayer)}
execute if score #sr_knowPlayer g_check matches 1 run return 1
# check time
$execute in minecraft:overworld positioned 0 930 0 if entity @e[type=marker,name=sr_timeStructure,scores={sr_idZone=$(idZone)},distance=..0.1,limit=1] run function structure_reloading:messages/waiting_time {"idZone":$(idZone)}
execute if score #sr_knowPlayer g_check matches 2 run return 2
# new player
$execute as @e[type=marker,scores={sr_idZone=$(idZone)}] at @s run function structure_reloading:reload/kill_entity with entity @s data
$execute as @e[type=marker,scores={sr_idZone=$(idZone)}] at @s run function structure_reloading:reload/reload with entity @s data
# data 
$execute in minecraft:overworld positioned 0 930 0 summon marker run function structure_reloading:reload/set_time_structure {"idZone":$(idZone),"idPlayer":$(idPlayer)}
#
$execute summon marker run function structure_reloading:reload/set_idplayer {"idPlayer":$(idPlayer)}
$execute as @p[scores={g_id=$(idPlayer)}] run function structure_reloading:messages/reload