function structure_reloading:structures_finder/portion/init
$execute in structure_reloading:$(world)_copy run forceload add ~ ~ ~ ~
$clone ~ ~ ~ ~15 ~15 ~15 to structure_reloading:$(world)_copy ~ ~ ~ replace
$function structure_reloading:structures_finder/chest_seed/find_chest {"world":"$(world)"}
$execute in structure_reloading:$(world)_copy run forceload remove ~ ~ ~ ~
# find entity
scoreboard players reset #ifEntity g_check
$execute positioned ~-2 ~-2 ~-2 as @e[type=!#structure_reloading:exclude_$(world),tag=!sr_entityReload,dx=19,dy=19,dz=19] at @s positioned ~ ~0.13 ~ run function structure_reloading:structures_finder/get_entity_type {"world":"$(world)"}
execute if score #ifEntity g_check matches 1 run tag @s add sr_haveEntity
# kill item bug chest
execute positioned ~-2 ~-2 ~-2 run kill @e[type=item,dx=19,dy=19,dz=19]