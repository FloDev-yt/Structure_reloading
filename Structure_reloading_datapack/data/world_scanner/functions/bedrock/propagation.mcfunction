# propagation in 4 directions
execute positioned ~16 ~ ~ if block ~ ~ ~ minecraft:bedrock summon marker run function world_scanner:bedrock/propagation_new
execute positioned ~-16 ~ ~ if block ~ ~ ~ minecraft:bedrock summon marker run function world_scanner:bedrock/propagation_new
execute positioned ~ ~ ~16 if block ~ ~ ~ minecraft:bedrock summon marker run function world_scanner:bedrock/propagation_new
execute positioned ~ ~ ~-16 if block ~ ~ ~ minecraft:bedrock summon marker run function world_scanner:bedrock/propagation_new
scoreboard players set @s world_scanner 2