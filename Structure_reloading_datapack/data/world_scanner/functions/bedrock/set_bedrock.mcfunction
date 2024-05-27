execute store success score @s world_scanner run fill ~ ~ ~ ~15 ~ ~15 minecraft:barrier
execute if score @s world_scanner matches 0 run kill @s
fill ~ ~1 ~ ~15 ~1 ~15 minecraft:bedrock