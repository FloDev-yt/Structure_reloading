function world_scanner:bedrock/set_bedrock
execute if score @s world_scanner matches 0 run return 0
execute if dimension minecraft:overworld run data merge entity @s {CustomName:"\"ws_chunkCorner\"",data:{"world":"overworld"}}
execute if dimension minecraft:the_nether run data merge entity @s {CustomName:"\"ws_chunkCorner\"",data:{"world":"the_nether"}}