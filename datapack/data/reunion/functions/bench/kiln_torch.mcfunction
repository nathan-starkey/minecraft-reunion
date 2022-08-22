scoreboard players set count rTemp 0
execute unless predicate reunion:kiln_burnitem run scoreboard players add count rTemp 8
execute unless predicate reunion:kiln_burnitem run scoreboard players add count rTemp 8
execute unless predicate reunion:kiln_burnitem run scoreboard players add count rTemp 8
execute unless predicate reunion:kiln_burnitem run scoreboard players add count rTemp 4
execute unless predicate reunion:kiln_burnitem run scoreboard players add count rTemp 2
execute unless predicate reunion:kiln_burnitem run scoreboard players add count rTemp 1
summon item ~ ~ ~ {Item:{id:torch,Count:1},Tags:[rTemp]}
execute store result entity @e[tag=rTemp,limit=1] Item.Count byte 1 run scoreboard players get count rTemp
tag @e[tag=rTemp,limit=1] remove rTemp
execute if predicate reunion:kiln_burnitem run summon item ~ ~ ~ {Item:{id:charcoal,Count:1}}
function reunion:bench/kiln_effect
kill @s[type=item]