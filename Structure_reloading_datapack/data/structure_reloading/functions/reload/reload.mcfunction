execute if entity @s[tag=sr_haveDirt_path] run fill ~ ~ ~ ~15 ~15 ~15 minecraft:air replace minecraft:dirt_path
$execute in structure_reloading:$(world)_copy run forceload add ~ ~ ~ ~
execute positioned ~-1 ~-1 ~-1 run tag @e[type=item,dx=17,dy=17,dz=17] add sr_item
$execute in structure_reloading:$(world)_copy run clone ~ ~ ~ ~15 ~15 ~15 to minecraft:$(world) ~ ~ ~ replace
execute if entity @s[tag=sr_haveEntity] positioned ~-5 ~-5 ~-5 as @e[type=marker,name=sr_entity,tag=!sr_reloadEntity,dx=25,dy=25,dz=25] at @s run function structure_reloading:reload/summon with entity @s data
execute positioned ~-1 ~-1 ~-1 run kill @e[type=item,tag=!sr_item,dx=17,dy=17,dz=17]
$execute in structure_reloading:$(world)_copy run forceload remove ~ ~ ~ ~