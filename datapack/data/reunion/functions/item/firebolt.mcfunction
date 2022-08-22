execute at @a[distance=..3,gamemode=!creative,gamemode=!spectator] run summon arrow ~ ~2.5 ~ {Fire:1000,Motion:[0.0,-1.0,0.0],CustomName:'"Flaming Shrapnel"',Tags:[rTemp]}
scoreboard players set @e[tag=rTemp] rKill 5
tag @e[tag=rTemp] remove rTemp
execute as @e[type=!player,type=!#firebolt_immune,distance=..3] run data modify entity @s Fire set value 120
particle flame ~ ~ ~ 1 1 1 0 100
particle lava ~ ~ ~ 1 1 1 0 10
particle block_marker fire ~ ~ ~ 1 1 1 0 20
playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1.5
playsound entity.splash_potion.break player @a ~ ~ ~ 1.5
execute if score doFireboltFire rGamerules matches 1 run setblock ~ ~ ~ fire keep
kill @s[tag=rFireboltMarker]