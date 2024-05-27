$function structure_reloading:structures_finder/scan_$(world)
$function structure_reloading:structures_finder/scan {"world":"$(world)","height":127,"height_div":64}
scoreboard players add @s world_scanner 1
tag @s add sr_scan
execute if score @s world_scanner >= #nbInstance-2 world_scanner run kill @s