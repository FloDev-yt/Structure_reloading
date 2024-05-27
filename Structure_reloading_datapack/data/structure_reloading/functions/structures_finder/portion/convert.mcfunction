scoreboard players operation @s sr_idZoneSave = @s sr_idZone
function structure_reloading:structures_finder/portion/init
execute store result storage structure_reloading:old_id id int 1 run scoreboard players get @s sr_idZoneSave
execute unless score @s sr_idZoneSave = @s sr_idZone run function structure_reloading:structures_finder/portion/old_id with storage structure_reloading:old_id
scoreboard players reset @s sr_idZoneSave