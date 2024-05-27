$execute as @e[type=marker,scores={sr_idZone=$(id)},name=sr_structure_master,limit=1] run function structure_reloading:structures_finder/portion/axe_add
$execute as @e[type=marker,scores={sr_idZone=1..},distance=..16.1] unless score @s sr_idZone matches $(id) at @s run function structure_reloading:structures_finder/portion/convert
scoreboard players reset @s sr_nb
data merge entity @s {CustomName:"\"sr_structure_slave\""}