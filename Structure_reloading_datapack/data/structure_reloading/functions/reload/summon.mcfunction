tag @s add sr_reloadEntity
$summon $(entityType) ~ ~ ~ $(entityNBT)
execute unless score #sr_reloadEntity g_check matches 1 run schedule function structure_reloading:reload/schedule_entity 2t
scoreboard players set #sr_reloadEntity g_check 1