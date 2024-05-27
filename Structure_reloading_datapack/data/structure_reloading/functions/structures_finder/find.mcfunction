execute if entity @e[type=marker,scores={sr_idZone=0..},limit=1,distance=..0.1] run return 0
$execute in structure_reloading:$(world)_copy run forceload add ~ ~ ~ ~
$execute summon marker run function structure_reloading:structures_finder/find_marker {"world":"$(world)"}
$function structure_reloading:structures_finder/chest_seed/find_chest {"world":"$(world)"}
$execute in structure_reloading:$(world)_copy run forceload remove ~-16 ~-16 ~16 ~16
# kill item bug chest
execute positioned ~-2 ~-2 ~-2 run kill @e[type=item,dx=19,dy=19,dz=19]