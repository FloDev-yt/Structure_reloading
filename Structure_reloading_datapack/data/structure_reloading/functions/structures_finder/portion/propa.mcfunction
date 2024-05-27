$execute unless entity @e[type=marker,scores={sr_idZone=$(id)},name=sr_structure_master,limit=1] run return 0
$execute if entity @s[tag=!sr_axeX] if loaded ~16 ~ ~ positioned ~16 ~ ~ run function structure_reloading:structures_finder/portion/propa_direction {"world":"$(world)","axe":"X"}
$execute if entity @s[tag=!sr_axe-X] if loaded ~-16 ~ ~ positioned ~-16 ~ ~ run function structure_reloading:structures_finder/portion/propa_direction {"world":"$(world)","axe":"-X"}
$execute if entity @s[tag=!sr_axeY] positioned ~ ~16 ~ run function structure_reloading:structures_finder/portion/propa_direction {"world":"$(world)","axe":"X"}
$execute if entity @s[tag=!sr_axe-Y] unless block ~ ~ ~ minecraft:barrier positioned ~ ~-16 ~ run function structure_reloading:structures_finder/portion/propa_direction {"world":"$(world)","axe":"-Y"}
$execute if entity @s[tag=!sr_axeZ] if loaded ~ ~ ~16 positioned ~ ~ ~16 run function structure_reloading:structures_finder/portion/propa_direction {"world":"$(world)","axe":"Z"}
$execute if entity @s[tag=!sr_axe-Z] if loaded ~ ~ ~-16 positioned ~ ~ ~-16 run function structure_reloading:structures_finder/portion/propa_direction {"world":"$(world)","axe":"-Z"}
execute if entity @s[tag=sr_axeX] if entity @s[tag=sr_axe-X] if entity @s[tag=sr_axeZ] if entity @s[tag=sr_axe-Z] run function structure_reloading:structures_finder/portion/reset_propa