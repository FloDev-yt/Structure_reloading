schedule function structure_reloading:main_20t 20t

execute in minecraft:overworld positioned 0 930 0 as @e[type=marker,name=sr_timeStructure,distance=..0.1] run function structure_reloading:reload/time_structure with entity @s data
execute as @e[type=marker,scores={sr_idZone=1..},tag=sr_propa] at @s run function structure_reloading:structures_finder/portion/propa with entity @s data
# for the_end
execute as @a[predicate=structure_reloading:in_the_end,limit=1] at @s as @e[type=minecraft:shulker,tag=!sr_shulker] at @s run function structure_reloading:structures_finder/shulker
# remove sr_entityReload for compagnon, if out of 32 blocks 
execute as @e[tag=sr_entityReload,sort=random,limit=1] at @s positioned ~-40 ~-40 ~-40 unless entity @e[type=marker,scores={sr_idZone=1..},dx=63,dy=63,dz=63] run tag @s remove sr_entityReload