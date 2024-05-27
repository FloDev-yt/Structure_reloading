# objectives
scoreboard objectives add world_scanner dummy
scoreboard players set #16 world_scanner 16
scoreboard players set #nbInstance-2 world_scanner 2

schedule function world_scanner:main_20t 10t
schedule function world_scanner:set_instance 5t