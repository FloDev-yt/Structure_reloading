scoreboard players operation @s sr_nb = @e[type=marker,name=sr_structure_master,distance=..0.1,limit=1] sr_nb
data merge entity @s {CustomName:"\"sr_structure_master\""}
tag @s remove sr_resetAxe