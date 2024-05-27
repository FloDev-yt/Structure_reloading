$execute positioned ~64.5 ~-64.5 ~-64.5 rotated -90 0 run function structure_reloading:structures_finder/portion/recursif_new_count_init {"square":"dx=-1,dy=128,dz=128","axe":"x","id":"$(id)"}
$execute positioned ~-64.5 ~-64.5 ~-64.5 rotated 90 0 run function structure_reloading:structures_finder/portion/recursif_new_count_init {"square":"dx=0,dy=128,dz=128","axe":"-x","id":"$(id)"}
$execute positioned ~-64.5 ~64.5 ~-64.5 rotated 0 -90 run function structure_reloading:structures_finder/portion/recursif_new_count_init {"square":"dx=128,dy=-1,dz=128","axe":"y","id":"$(id)"}
$execute positioned ~-64.5 ~-64.5 ~-64.5 rotated 0 90 run function structure_reloading:structures_finder/portion/recursif_new_count_init {"square":"dx=128,dy=0,dz=128","axe":"-y","id":"$(id)"}
$execute positioned ~-64.5 ~-64.5 ~64.5 rotated 0 0 run function structure_reloading:structures_finder/portion/recursif_new_count_init {"square":"dx=128,dy=128,dz=-1","axe":"z","id":"$(id)"}
$execute positioned ~-64.5 ~-64.5 ~-64.5 rotated 180 0 run function structure_reloading:structures_finder/portion/recursif_new_count_init {"square":"dx=128,dy=128,dz=0","axe":"-z","id":"$(id)"}
tag @s remove sr_resetAxe