$data merge entity @s {CustomName:"\"sr_timeStructure\"",data:{"idZone":$(idZone),"idPlayer":$(idPlayer)}}
$scoreboard players set @s g_id $(idPlayer)
$scoreboard players set @s sr_idZone $(idZone)
scoreboard players operation @s sr_nb = sr_time_before_reload_structure gamerule