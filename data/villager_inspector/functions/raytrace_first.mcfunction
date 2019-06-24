#tell @s first

execute as @e[type=minecraft:villager,tag=VI_target] run data modify entity @s Glowing set value 0b

#https://www.reddit.com/r/MinecraftCommands/comments/9n1ghh/raycasting_in_1131/
execute at @s positioned ~ ~1.35 ~ run function villager_inspector:raytrace_loop
