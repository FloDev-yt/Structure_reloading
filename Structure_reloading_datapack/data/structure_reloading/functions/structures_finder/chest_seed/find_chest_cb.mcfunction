$execute in structure_reloading:$(world)_copy run forceload add ~ ~ ~ ~
$execute in structure_reloading:$(world)_copy run data remove block ~ ~ ~ LootTableSeed
$execute in structure_reloading:$(world)_copy run clone ~ ~ ~ ~ ~ ~ to minecraft:$(world) ~ ~ ~ replace
$execute in structure_reloading:$(world)_copy run forceload remove ~ ~ ~ ~
