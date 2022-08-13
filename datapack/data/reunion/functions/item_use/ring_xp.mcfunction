# If (XP == 0)
execute store result score @s r_tmp_a run xp query @s levels
execute store result score @s r_tmp_b run xp query @s points
# Then
execute if entity @s[scores={r_tmp_a=0,r_tmp_b=0}] run function reunion:xp_restore
# Else
execute unless entity @s[scores={r_tmp_a=0,r_tmp_b=0}] run function reunion:xp_store
# End If