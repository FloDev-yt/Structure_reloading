execute unless score @s world_scanner matches 0.. if block ~ ~ ~ minecraft:bedrock run scoreboard players set @s world_scanner 0
execute if score @s world_scanner matches 0..2 run return 0
scoreboard players reset @s[scores={world_scanner=3..}] world_scanner
execute if block ~ ~ ~ minecraft:bedrock summon marker run function world_scanner:chunk_align
execute positioned ~160 ~ ~ if block ~ ~ ~ minecraft:bedrock summon marker run function world_scanner:chunk_align
execute positioned ~-160 ~ ~ if block ~ ~ ~ minecraft:bedrock summon marker run function world_scanner:chunk_align
execute positioned ~ ~ ~160 if block ~ ~ ~ minecraft:bedrock summon marker run function world_scanner:chunk_align
execute positioned ~ ~ ~-160 if block ~ ~ ~ minecraft:bedrock summon marker run function world_scanner:chunk_align