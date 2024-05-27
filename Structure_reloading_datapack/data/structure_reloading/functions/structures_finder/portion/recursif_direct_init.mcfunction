scoreboard players set #sr_rangAxe g_check 1
$function structure_reloading:structures_finder/portion/recursif_direct {"square":"$(square)"}
$scoreboard players operation @s sr_$(axeReverse)Axe += #sr_rangAxe g_check
$execute if score @s sr_$(axeReverse)Axe matches 5.. run return -2
$scoreboard players operation @s sr_$(axe)Axe -= #sr_rangAxe g_check
return 1