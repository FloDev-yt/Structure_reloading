execute as @e[type=marker,name=ws_chunkCorner,scores={world_scanner=2},tag=!sr_scan,limit=1] at @s run function structure_reloading:structures_finder/scan_world with entity @s data
#
execute as @a[scores={sr_idZone=1..}] run scoreboard players set @s sr_idZone 0
execute as @a[gamemode=survival] at @s positioned ~-24 ~-24 ~-24 run scoreboard players operation @s sr_idZone = @e[type=marker,scores={sr_idZone=1..},dx=31,dy=31,dz=31,limit=1,sort=furthest] sr_idZone

execute as @a[gamemode=survival,scores={sr_idZone=0..}] unless score @s sr_idZoneSave = @s sr_idZone run function structure_reloading:reload/change