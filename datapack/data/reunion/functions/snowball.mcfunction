execute as @e[type=snowball,nbt={Item:{tag:{rTag:"featherburst"}}}] at @s as @p[distance=..5] at @s run function reunion:item/featherburst
kill @e[type=snowball,nbt={Item:{tag:{rTag:"featherburst"}}}]

execute at @e[type=snowball,nbt={Item:{tag:{rTag:"glowball"}}},tag=!rGlowball] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:[rGlowballMarker]}
tag @e[type=snowball,nbt={Item:{tag:{rTag:"glowball"}}},tag=!rGlowball] add rGlowball
execute at @e[type=snowball,nbt={Item:{tag:{rTag:"gravitypearl"}}},tag=!rGravitypearl] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:[rGravitypearlMarker]}
tag @e[type=snowball,nbt={Item:{tag:{rTag:"gravitypearl"}}},tag=!rGravitypearl] add rGravitypearl
execute at @e[type=snowball,nbt={Item:{tag:{rTag:"impactgrenade"}}},tag=!rImpactgrenade] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:[rImpactgrenadeMarker]}
tag @e[type=snowball,nbt={Item:{tag:{rTag:"impactgrenade"}}},tag=!rImpactgrenade] add rImpactgrenade
execute at @e[type=snowball,nbt={Item:{tag:{rTag:"firebolt"}}},tag=!rFirebolt] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:[rFireboltMarker]}
tag @e[type=snowball,nbt={Item:{tag:{rTag:"firebolt"}}},tag=!rFirebolt] add rFirebolt

tag @e[tag=rMarked] remove rMarked
execute as @e[tag=rGlowball] at @s run function reunion:snowball_glowball
execute as @e[tag=rGlowballMarker,tag=!rMarked] at @s run function reunion:item/glowball
execute as @e[tag=rGravitypearl] at @s run function reunion:snowball_gravitypearl
execute as @e[tag=rGravitypearlMarker,tag=!rMarked] at @s run function reunion:item/gravitypearl
execute as @e[tag=rImpactgrenade] at @s run function reunion:snowball_impactgrenade
execute as @e[tag=rImpactgrenadeMarker,tag=!rMarked] at @s run function reunion:item/impactgrenade
execute as @e[tag=rFirebolt] at @s run function reunion:snowball_firebolt
execute as @e[tag=rFireboltMarker,tag=!rMarked] at @s run function reunion:item/firebolt

execute at @e[tag=rGravitypearl] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0 1
execute at @e[tag=rGlowball] run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0 1
execute at @e[tag=rFirebolt] run particle flame ~ ~ ~ 0.1 0.1 0.1 0 1
execute at @e[tag=rImpactgrenade] run particle smoke ~ ~ ~ 0.1 0.1 0.1 0 1