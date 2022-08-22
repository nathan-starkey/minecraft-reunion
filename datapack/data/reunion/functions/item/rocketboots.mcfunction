scoreboard players remove @s rRocketFlight 1
scoreboard players set @s rClearLevitation 2
effect give @s levitation 1 6 true
particle flame ^-0.2 ^ ^-0.2 0.1 0 0.1 0 2
particle flame ^0.2 ^ ^-0.2 0.1 0 0.1 0 2
particle large_smoke ^-0.2 ^ ^-0.2 0.1 0 0.1 0 2
particle large_smoke ^0.2 ^ ^-0.2 0.1 0 0.1 0 2
execute if score fastSounds rTemp matches 0 run playsound ui.toast.out player @a ~ ~ ~ 1 0.8 0
execute if score fastSounds rTemp matches 0 run playsound entity.shulker.shoot player @a ~ ~ ~ 0.4
execute if score @s rRocketFlight matches 0 run playsound item.flintandsteel.use player @a ~ ~ ~ 0.5
item modify entity @s[gamemode=!creative] armor.feet reunion:rocketboots_damage