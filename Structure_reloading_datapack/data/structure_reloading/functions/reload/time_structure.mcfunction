$execute unless entity @a[gamemode=survival,scores={g_id=$(idPlayer),sr_idZone=$(idZone)}] run scoreboard players remove @s sr_nb 1
kill @s[scores={sr_nb=..0}]