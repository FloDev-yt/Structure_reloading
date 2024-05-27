$execute store success score #sr_findStructure g_check run clone ~ ~ ~ ~15 ~$(height) ~15 ~ ~ ~ filtered #structure_reloading:find_blocks_$(world) force
execute if score #sr_findStructure g_check matches 0 run return 0
$execute if score #15 sr_nb matches $(height) run function structure_reloading:structures_finder/find {"world":"$(world)"}
$execute if score #15 sr_nb matches $(height) run return 1
$function structure_reloading:structures_finder/scan with storage structure_reloading:height$(height)_$(world)
$execute positioned ~ ~$(height_div) ~ run function structure_reloading:structures_finder/scan with storage structure_reloading:height$(height)_$(world)