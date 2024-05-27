schedule function world_scanner:main_20t 20t
# propagation
execute as @e[type=marker,name=ws_chunkCorner,scores={world_scanner=1}] at @s run function world_scanner:bedrock/propagation
# check if is new chunk
scoreboard players add @a[scores={world_scanner=0..2}] world_scanner 1
execute as @a unless score @s world_scanner matches 0..2 at @s run function world_scanner:world