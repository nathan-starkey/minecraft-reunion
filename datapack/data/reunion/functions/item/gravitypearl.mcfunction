effect give @e[distance=..5] levitation 1 20 true
effect give @a[distance=..5] resistance 5 2 true
scoreboard players set @e[distance=..5] rClearLevitation 10
particle warped_spore ~ ~ ~ 2 0 2 0 100
playsound item.bucket.empty_lava player @a ~ ~ ~ 1.5
playsound block.slime_block.break player @a ~ ~ ~ 1.5
kill @s[tag=rGravitypearlMarker]