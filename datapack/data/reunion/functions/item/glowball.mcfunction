effect give @e[distance=..3] glowing 7 1 true
playsound entity.splash_potion.break player @a ~ ~ ~ 1.5
execute as @a[distance=..2] at @s run playsound block.brewing_stand.brew player @s ~ ~ ~
particle squid_ink ~ ~ ~ 1 1 1 0 50
kill @s[tag=rGlowballMarker]