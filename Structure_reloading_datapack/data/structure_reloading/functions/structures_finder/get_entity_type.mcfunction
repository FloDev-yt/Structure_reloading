tag @s add sr_entityReload
scoreboard players set #ifEntity g_check 1
execute if entity @s[type=chest_minecart] run function structure_reloading:structures_finder/chest_seed/chest_minecart
$execute in structure_reloading:$(world)_copy run forceload add ~ ~ ~ ~
$clone ~ ~ ~ ~ ~ ~ to structure_reloading:$(world)_copy ~ ~ ~ replace
setblock ~ ~ ~ minecraft:acacia_sign{front_text:{messages:["{\"selector\":\"@e[type=!player,tag=sr_entityReload,limit=1,sort=nearest]\"}","\"\"","\"\"","\"\""]}}
data modify storage structure_reloading:buffer_string entityType set from block ~ ~ ~ front_text.messages[0]
function structure_reloading:structures_finder/interpret_string with storage structure_reloading:buffer_string
execute positioned ~ ~-0.13 ~ summon marker run function structure_reloading:structures_finder/set_data
$execute in structure_reloading:$(world)_copy run clone ~ ~ ~ ~ ~ ~ to minecraft:$(world) ~ ~ ~ replace
# kill entity
# data merge entity @s {DeathTime:20,Health:0,Pos:[8,-164,8]}