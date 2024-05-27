$execute if entity @e[type=marker,scores={sr_idZone=$(id)},$(square)] run return 1
execute if score #sr_rangAxe g_check matches 0 run return 0
scoreboard players remove #sr_rangAxe g_check 1
$execute positioned ^ ^ ^-16 run function structure_reloading:structures_finder/portion/recursif_new_count {"square":"$(square)","id":"$(id)"}