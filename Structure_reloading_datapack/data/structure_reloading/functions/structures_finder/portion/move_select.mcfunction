scoreboard players set #sr_ifMove g_check -1
$execute if score @s sr_$(axe)Axe matches 4 run return -1
$tag @e[type=marker,scores={sr_idZone=$(id)},$(bigsquare)] add sr_squareSelect
execute at @s as @e[type=marker,tag=sr_squareSelect,sort=nearest] run function structure_reloading:structures_finder/portion/move_direct