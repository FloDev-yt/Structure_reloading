execute store result storage structure_reloading:change idZone int 1 run scoreboard players operation @s sr_idZoneSave = @s sr_idZone
execute if score @s sr_idZone matches 1.. store result storage structure_reloading:change idPlayer int 1 run scoreboard players get @s g_id
# if enter or out
execute if score @s sr_idZone matches 1.. run function structure_reloading:reload/at_master with storage structure_reloading:change
execute if score @s sr_idZone matches 0 run function structure_reloading:messages/goodbye
scoreboard players reset @s[scores={sr_idZone=0}] sr_idZone