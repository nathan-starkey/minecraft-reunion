scoreboard players reset @s rCarrotOnAStick
execute unless score @s rSneakTime matches 1 run function reunion:item/xpring_store_check
execute if score @s rSneakTime matches 1 run function reunion:item/xpring_restore_check