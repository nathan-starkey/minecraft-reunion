scoreboard objectives add r_stored_xp dummy {"text":"Stored XP","color":"green"}

# Vars: Misc
scoreboard objectives add r_deaths dummy {"text":"Deaths","color":"blue"}
scoreboard objectives add r_health dummy {"text":"HP","color":"red"}

# Vars: Use items
scoreboard objectives add r_use_0 minecraft.used:minecraft.carrot_on_a_stick

# Vars: Temp
scoreboard objectives add r_tmp_a dummy
scoreboard objectives add r_tmp_b dummy

function math:init
function util:init

# Ready!
tellraw @a {"text":"Datapack reloaded","color":"green"}