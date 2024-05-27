# summon
execute if dimension minecraft:overworld run data merge entity @s {CustomName:"\"ws_chunkCorner\"",data:{"world":"overworld"}}
execute if dimension minecraft:the_nether run data merge entity @s {CustomName:"\"ws_chunkCorner\"",data:{"world":"the_nether"}}
# align chunk
execute store result score #Xcoords%16 world_scanner store result score #Xcoords world_scanner run data get entity @s Pos[0]
execute store result score #Zcoords%16 world_scanner store result score #Zcoords world_scanner run data get entity @s Pos[2]

scoreboard players operation #Xcoords%16 world_scanner %= #16 world_scanner
scoreboard players operation #Zcoords%16 world_scanner %= #16 world_scanner

execute store result entity @s Pos[0] double 1 run scoreboard players operation #Xcoords world_scanner -= #Xcoords%16 world_scanner
execute store result entity @s Pos[2] double 1 run scoreboard players operation #Zcoords world_scanner -= #Zcoords%16 world_scanner

execute at @s run function world_scanner:bedrock/set_bedrock
# execute at @s[tag=the_end] run fill ~ 255 ~ ~15 255 ~15 minecraft:light[level=0]

