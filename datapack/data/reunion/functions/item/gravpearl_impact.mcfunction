effect give @e[distance=..5] levitation 1 20 true
effect give @a[distance=..5] resistance 5 3 true
# effect give @a[distance=..5] speed 2 1 true
particle reverse_portal ~ ~ ~ 1 1 1 1 100 force
playsound minecraft:item.bucket.empty_lava player @a
playsound minecraft:block.glass.break player @a