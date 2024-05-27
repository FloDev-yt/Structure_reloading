# as master at new slave to far 
scoreboard players set #sr_ifMove g_check 0
$execute positioned ~-80.5 ~-64.5 ~-64.5 if entity @s[dx=0,dy=128,dz=128] positioned ~16 ~ ~ run function structure_reloading:structures_finder/portion/move_select {"axe":"-x","bigsquare":"dx=49,dy=128,dz=128","id":"$(id)"}
$execute if score #sr_ifMove g_check matches 0 positioned ~80.5 ~-64.5 ~-64.5 if entity @s[dx=-1,dy=128,dz=128] positioned ~-16 ~ ~ run function structure_reloading:structures_finder/portion/move_select {"axe":"x","bigsquare":"dx=-49,dy=128,dz=128","id":"$(id)"}
# Y
$execute if score #sr_ifMove g_check matches 0 positioned ~-64.5 ~-80.5 ~-64.5 if entity @s[dx=128,dy=0,dz=128] positioned ~ ~16 ~ run function structure_reloading:structures_finder/portion/move_select {"axe":"-y","bigsquare":"dx=128,dy=49,dz=128","id":"$(id)"}
$execute if score #sr_ifMove g_check matches 0 positioned ~-64.5 ~80.5 ~-64.5 if entity @s[dx=128,dy=-1,dz=128] positioned ~ ~-16 ~ run function structure_reloading:structures_finder/portion/move_select {"axe":"y","bigsquare":"dx=128,dy=-49,dz=128","id":"$(id)"}
# Z
$execute if score #sr_ifMove g_check matches 0 positioned ~-64.5 ~-64.5 ~-80.5 if entity @s[dx=128,dy=128,dz=0] positioned ~ ~ ~16 run function structure_reloading:structures_finder/portion/move_select {"axe":"-z","bigsquare":"dx=128,dy=128,dz=49","id":"$(id)"}
$execute if score #sr_ifMove g_check matches 0 positioned ~-64.5 ~-64.5 ~80.5 if entity @s[dx=128,dy=128,dz=-1] positioned ~ ~ ~-16 run function structure_reloading:structures_finder/portion/move_select {"axe":"z","bigsquare":"dx=128,dy=128,dz=-49","id":"$(id)"}