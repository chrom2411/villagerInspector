#tell @s loop

#summon minecraft:bat ~ ~ ~ {NoGravity:1b,Silent:1b,Glowing:1b,NoAI:1b}
execute if entity @s[type=minecraft:player,distance=..6] unless entity @e[type=minecraft:villager,distance=..1.1,limit=1] positioned ^ ^ ^0.5 run function villager_inspector:raytrace_loop
execute if entity @e[type=minecraft:villager,distance=..1.1,limit=1] run function villager_inspector:inspect
