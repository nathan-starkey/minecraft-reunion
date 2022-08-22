scoreboard objectives add rNums dummy
scoreboard objectives add rTemp dummy
scoreboard objectives add rKill dummy
scoreboard objectives add rClearLevitation dummy
scoreboard objectives add rGamerules dummy
scoreboard objectives add rRocketFlight dummy
scoreboard objectives add rIsInBoat dummy
scoreboard objectives add rWasInBoat dummy
scoreboard objectives add rEnterBoat dummy
scoreboard objectives add rExitBoat dummy
scoreboard objectives add rJoin dummy
scoreboard objectives add rLeave minecraft.custom:minecraft.leave_game
scoreboard objectives add rSneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add rCarrotOnAStick minecraft.used:minecraft.carrot_on_a_stick

scoreboard players set 100 rNums 100
scoreboard players set 1000 rNums 1000
scoreboard players set 3950001 rNums 3950001
scoreboard players set 3950002 rNums 3950002

scoreboard players set fastSounds rTemp 1
execute unless score doFireboltFire rGamerules matches 0 run scoreboard players set doFireboltFire rGamerules 1

tellraw @a {"text":"Datapack reloaded","color":"green"}