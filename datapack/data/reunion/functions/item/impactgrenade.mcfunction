playsound entity.generic.explode block @a ~ ~ ~ 2 0.8
particle explosion ~ ~ ~ 1.5 1.5 1.5 2 25
effect give @e[type=!#reunion:undead,distance=..4] instant_damage 1 0 true
effect give @e[type=#reunion:undead,distance=..4] instant_health 1 0 true
particle lava ~ ~ ~ 2 2 2 2 25
kill @s[tag=rImpactgrenadeMarker]