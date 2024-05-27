scoreboard players add @s sr_idZone 0
# matching with Block protec
scoreboard players set @s bp_area 16
execute as @e[type=marker,scores={sr_idZone=1..},distance=..16.1] positioned ~-80.5 ~-80.5 ~-80.5 run function structure_reloading:structures_finder/portion/what_master with entity @s data
execute if score @s sr_idZoneSave = @s sr_idZone run return 0
execute if score @s sr_idZone matches 1.. run function structure_reloading:structures_finder/portion/at_master with entity @s data
execute if score @s sr_idZone matches 1.. run return 1
data merge entity @s {CustomName:"\"sr_structure_master\""}
execute store result entity @s data.id int 1 store result score @s sr_idZone run scoreboard players add #idMax sr_idZone 1