scoreboard players add @s sr_nb 1
execute positioned ~15.5 ~-64.5 ~-64.5 if entity @s[dx=49,dy=128,dz=128] rotated -90 0 run function structure_reloading:structures_finder/portion/recursif_add_init {"square":"dx=0,dy=128,dz=128","axe":"-x"}
execute positioned ~-15.5 ~-64.5 ~-64.5 if entity @s[dx=-49,dy=128,dz=128] rotated 90 0 run function structure_reloading:structures_finder/portion/recursif_add_init {"square":"dx=-1,dy=128,dz=128","axe":"x"}

execute positioned ~-64.5 ~15.5 ~-64.5 if entity @s[dx=128,dy=49,dz=128] rotated 0 -90 run function structure_reloading:structures_finder/portion/recursif_add_init {"square":"dx=128,dy=0,dz=128","axe":"-y"}
execute positioned ~-64.5 ~-15.5 ~-64.5 if entity @s[dx=128,dy=-49,dz=128] rotated 0 90 run function structure_reloading:structures_finder/portion/recursif_add_init {"square":"dx=128,dy=-1,dz=128","axe":"y"}

execute positioned ~-64.5 ~-64.5 ~15.5 if entity @s[dx=128,dy=128,dz=49] rotated 0 0 run function structure_reloading:structures_finder/portion/recursif_add_init {"square":"dx=128,dy=128,dz=0","axe":"-z"}
execute positioned ~-64.5 ~-64.5 ~-15.5 if entity @s[dx=128,dy=-49,dz=128] rotated 180 0 run function structure_reloading:structures_finder/portion/recursif_add_init {"square":"dx=128,dy=128,dz=-1","axe":"z"}
