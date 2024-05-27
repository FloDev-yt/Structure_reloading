scoreboard players set #sr_ifMove g_check 1
$execute positioned ~-64.5 ~-64.5 ~-64.5 unless entity @s[dx=128,dy=128,dz=128] positioned ~64.5 ~64.5 ~64.5 run function structure_reloading:structures_finder/portion/move_ckeck {"id":"$(id)"}
execute if score #sr_ifMove g_check matches 0 run return 0
$execute store result entity @e[type=marker,scores={sr_idZone=-1..},distance=..0.1,limit=1] data.id int 1 run scoreboard players set @e[type=marker,scores={sr_idZone=-1..},distance=..0.1,limit=1] sr_idZone $(id)
$scoreboard players operation @e[type=marker,scores={sr_idZone=$(id)},distance=..0.1,limit=1] sr_nb = @s sr_nb