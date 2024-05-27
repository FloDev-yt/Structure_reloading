$execute if entity @s[name=sr_structure_master] as @e[type=marker,scores={sr_idZone=$(id)},sort=nearest,limit=1] run function structure_reloading:structures_finder/portion/set_score
$scoreboard players remove @e[type=marker,scores={sr_idZoneSave=$(id)},name=sr_structure_master,limit=1] sr_nb 1
$scoreboard players remove @e[type=marker,scores={sr_idZone=$(id)},name=sr_structure_master,limit=1] sr_nb 1
$tag @e[type=marker,scores={sr_idZoneSave=$(id)},name=sr_structure_master,limit=1] add sr_resetAxe
$tag @e[type=marker,scores={sr_idZone=$(id)},name=sr_structure_master,limit=1] add sr_resetAxe
schedule function structure_reloading:structures_finder/reset_axe 20t