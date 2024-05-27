schedule function structure_reloading:main_20t 20t

# score
scoreboard objectives add g_check dummy
scoreboard objectives add sr_nb dummy
scoreboard players set #15 sr_nb 15
scoreboard players set #16 sr_nb 16
scoreboard players set #60 sr_nb 60
scoreboard objectives add sr_idZone dummy
scoreboard objectives add sr_idZoneSave dummy
scoreboard objectives add sr_xAxe dummy
scoreboard objectives add sr_-xAxe dummy
scoreboard objectives add sr_yAxe dummy
scoreboard objectives add sr_-yAxe dummy
scoreboard objectives add sr_zAxe dummy
scoreboard objectives add sr_-zAxe dummy
# param global for all datapack with option
scoreboard objectives add gamerule dummy
execute unless score sr_time_before_reload_structure gamerule matches 0.. run scoreboard players set sr_time_before_reload_structure gamerule 300
# # matching with Block protec
scoreboard objectives add bp_area dummy
execute in minecraft:overworld run forceload add 0 0 0 0
gamerule commandBlockOutput false

# overworld
data merge storage structure_reloading:height127_overworld {"height":63,"height_div":32,"world":"overworld"}
data merge storage structure_reloading:height63_overworld {"height":31,"height_div":16,"world":"overworld"}
data merge storage structure_reloading:height31_overworld {"height":15,"height_div":"","world":"overworld"}
# the_nether
data merge storage structure_reloading:height127_the_nether {"height":63,"height_div":32,"world":"the_nether"}
data merge storage structure_reloading:height63_the_nether {"height":31,"height_div":16,"world":"the_nether"}
data merge storage structure_reloading:height31_the_nether {"height":15,"height_div":"","world":"the_nether"}

# find admin for give a message
tag @a[gamemode=creative] add adminMsg
# Option for serveur with admin
# tag @a[tag=admin] add adminMsg
# if not admin 
execute unless entity @a[tag=adminMsg] run tag @a add adminMsg
tellraw @a[tag=adminMsg] ["",{"text":"[","color":"aqua"},{"text":"Structure reloading","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://github.com/FloDev-yt/Structure_reloading/tree/MC-1.20.2_FR"},"hoverEvent":{"action":"show_text","contents":["Lien vers le site du Datapack"]}},{"text":"]","color":"aqua"},{"text":" reloaded","color":"dark_green"}]
tag @a[tag=adminMsg] remove adminMsg
