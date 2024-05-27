$data merge entity @s {data:{"world":"$(world)"},Tags:["sr_propa"]}

execute store result score #Xcoords%16 sr_nb store result score #Xcoords sr_nb run data get entity @s Pos[0]
execute store result score #Ycoords%16 sr_nb store result score #Ycoords sr_nb run data get entity @s Pos[1]
execute store result score #Zcoords%16 sr_nb store result score #Zcoords sr_nb run data get entity @s Pos[2]

scoreboard players operation #Xcoords%16 sr_nb %= #16 sr_nb
scoreboard players operation #Ycoords%16 sr_nb %= #16 sr_nb
scoreboard players operation #Zcoords%16 sr_nb %= #16 sr_nb

execute store result entity @s Pos[0] double 1 run scoreboard players operation #Xcoords sr_nb -= #Xcoords%16 sr_nb
execute store result entity @s Pos[1] double 1 run scoreboard players operation #Ycoords sr_nb -= #Ycoords%16 sr_nb
execute store result entity @s Pos[2] double 1 run scoreboard players operation #Zcoords sr_nb -= #Zcoords%16 sr_nb

$execute at @s run function structure_reloading:structures_finder/chunk_align_2 {"world":"$(world)"}