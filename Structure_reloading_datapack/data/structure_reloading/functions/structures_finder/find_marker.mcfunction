$data merge entity @s {data:{"world":"$(world)"},Tags:["sr_propa"]}
function structure_reloading:structures_finder/portion/init
# if find entity to copy
$clone ~ ~ ~ ~15 ~15 ~15 to structure_reloading:$(world)_copy ~ ~ ~ replace
execute if dimension minecraft:overworld run function structure_reloading:structures_finder/dirt_path {"world":"overworld"}
# find entity
scoreboard players reset #ifEntity g_check
$execute positioned ~-2 ~-2 ~-2 as @e[type=!#structure_reloading:exclude_$(world),tag=!sr_entityReload,dx=19,dy=19,dz=19] at @s positioned ~ ~0.13 ~ run function structure_reloading:structures_finder/get_entity_type {"world":"$(world)"}
execute if score #ifEntity g_check matches 1 run tag @s add sr_haveEntity
# # test
# setblock ~ ~ ~ minecraft:structure_block{mode:"SAVE",posX:0,posY:0,posZ:0,name:"minecraft:sr_test",sizeX:16,sizeY:16,sizeZ:16}
# execute as @e[type=marker,scores={sr_idZone=1..}] at @s run setblock ~ ~ ~ minecraft:structure_block{mode:"SAVE",posX:0,posY:0,posZ:0,name:"minecraft:sr_test",sizeX:16,sizeY:16,sizeZ:16}