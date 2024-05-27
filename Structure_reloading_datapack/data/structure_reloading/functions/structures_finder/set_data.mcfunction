data merge entity @s {CustomName:"\"sr_entity\""}
data modify entity @s data.entityType set from storage structure_reloading:buffer_string hoverEvent.contents.type
data modify entity @s data.entityNBT set from entity @e[type=!player,tag=sr_entityReload,limit=1,sort=nearest]
data remove entity @s data.entityNBT.UUID
data remove entity @s data.entityNBT.FallDistance
data remove entity @s data.entityNBT.PortalCooldown
data remove entity @s data.entityNBT.Fire
data remove entity @s data.entityNBT.Air