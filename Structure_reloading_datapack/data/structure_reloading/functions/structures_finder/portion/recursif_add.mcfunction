$execute if entity @s[$(square)] run return 1
execute if score #sr_rangAxe g_check matches 4 run return 0
scoreboard players add #sr_rangAxe g_check 1
$execute positioned ^ ^ ^16 run function structure_reloading:structures_finder/portion/recursif_add {"square":"$(square)"}
