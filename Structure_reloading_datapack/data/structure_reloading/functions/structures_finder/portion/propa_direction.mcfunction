$tag @s add sr_axe$(axe)
execute if entity @e[type=marker,scores={sr_idZone=0..},limit=1,distance=..0.1] run return 1
$execute in structure_reloading:$(world)_copy run forceload add ~ ~ ~ ~
$execute store result score #block_replace g_check run clone ~ ~ ~ ~15 ~15 ~15 to structure_reloading:$(world)_copy ~ ~ ~ filtered #structure_reloading:natural_blocks_$(world) force
execute if block ~ ~ ~ minecraft:barrier run scoreboard players add #block_replace g_check 256
# max 4096
$execute if score #block_replace g_check matches 1..4086 run function structure_reloading:structures_finder/find {"world":"$(world)"}
$execute if entity @s[tag=sr_haveDirt_path] run clone ~ ~-1 ~ ~15 ~-1 ~15 to structure_reloading:$(world)_copy ~ ~-1 ~ filtered minecraft:dirt_path force
$execute in structure_reloading:$(world)_copy run forceload remove ~ ~ ~ ~