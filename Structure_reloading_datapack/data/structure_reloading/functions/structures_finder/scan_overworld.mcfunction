# find portion with entity
execute as @e[type=#structure_reloading:find_entity_overworld,tag=!sr_entityReload,dx=15,dy=400,dz=15] at @s positioned ~-16 ~-16 ~-16 unless entity @e[type=marker,scores={sr_idZone=0..},dx=15,dy=15,dz=15,limit=1] at @s summon marker run function structure_reloading:structures_finder/chunk_align {"world":"overworld"}
# scan world
execute positioned ~ ~256 ~ run function structure_reloading:structures_finder/scan {"world":"overworld","height":127,"height_div":64}
execute positioned ~ ~128 ~ run function structure_reloading:structures_finder/scan {"world":"overworld","height":127,"height_div":64}