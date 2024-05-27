tag @s remove sr_squareSelect
execute if score #sr_ifMove g_check matches 1 run return 1
scoreboard players operation @s sr_xAxe = @e[type=marker,name=sr_structure_master,distance=..0.1,limit=1] sr_xAxe
scoreboard players operation @s sr_-xAxe = @e[type=marker,name=sr_structure_master,distance=..0.1,limit=1] sr_-xAxe
execute positioned ~15.5 ~-64.5 ~-64.5 if entity @s[dx=49,dy=128,dz=128] rotated -90 0 store result score #sr_ifMove g_check run function structure_reloading:structures_finder/portion/recursif_direct_init {"square":"dx=0,dy=128,dz=128","axe":"x","axeReverse":"-x"}
execute positioned ~-15.5 ~-64.5 ~-64.5 if entity @s[dx=-49,dy=128,dz=128] rotated 90 0 store result score #sr_ifMove g_check run function structure_reloading:structures_finder/portion/recursif_direct_init {"square":"dx=-1,dy=128,dz=128","axe":"-x","axeReverse":"x"}
execute if score #sr_ifMove g_check matches -2 run return -2
scoreboard players operation @s sr_yAxe = @e[type=marker,name=sr_structure_master,distance=..0.1,limit=1] sr_yAxe
scoreboard players operation @s sr_-yAxe = @e[type=marker,name=sr_structure_master,distance=..0.1,limit=1] sr_-yAxe
execute positioned ~-64.5 ~15.5 ~-64.5 if entity @s[dx=128,dy=49,dz=128] rotated 0 -90 store result score #sr_ifMove g_check run function structure_reloading:structures_finder/portion/recursif_direct_init {"square":"dx=128,dy=0,dz=128","axe":"y","axeReverse":"-y"}
execute positioned ~-64.5 ~-15.5 ~-64.5 if entity @s[dx=128,dy=-49,dz=128] rotated 0 90 store result score #sr_ifMove g_check run function structure_reloading:structures_finder/portion/recursif_direct_init {"square":"dx=128,dy=-1,dz=128","axe":"-y","axeReverse":"y"}
execute if score #sr_ifMove g_check matches -2 run return -2
scoreboard players operation @s sr_zAxe = @e[type=marker,name=sr_structure_master,distance=..0.1,limit=1] sr_zAxe
scoreboard players operation @s sr_-zAxe = @e[type=marker,name=sr_structure_master,distance=..0.1,limit=1] sr_-zAxe
execute positioned ~-64.5 ~-64.5 ~15.5 if entity @s[dx=128,dy=128,dz=49] rotated 0 0 store result score #sr_ifMove g_check run function structure_reloading:structures_finder/portion/recursif_direct_init {"square":"dx=128,dy=128,dz=0","axe":"z","axeReverse":"-z"}
execute positioned ~-64.5 ~-64.5 ~-15.5 if entity @s[dx=128,dy=128,dz=-49] rotated 180 0 store result score #sr_ifMove g_check run function structure_reloading:structures_finder/portion/recursif_direct_init {"square":"dx=128,dy=128,dz=-1","axe":"-z","axeReverse":"z"}
execute if score #sr_ifMove g_check matches -2 run return -2
scoreboard players operation @s sr_nb = @e[type=marker,name=sr_structure_master,distance=..0.1,limit=1] sr_nb
scoreboard players reset @e[type=marker,name=sr_structure_master,distance=..0.1,limit=1] sr_nb
data merge entity @s {CustomName:"\"sr_structure_master\""}
data merge entity @e[type=marker,name=sr_structure_master,distance=..0.1,limit=1] {CustomName:"\"sr_structure_slave\""}