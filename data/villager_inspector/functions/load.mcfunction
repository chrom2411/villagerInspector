scoreboard objectives add VI_talk2villager minecraft.custom:minecraft.talked_to_villager
scoreboard players set @a VI_talk2villager 0

scoreboard objectives add VI_tempX dummy
scoreboard objectives add VI_tempY dummy
scoreboard objectives add VI_tempZ dummy
scoreboard objectives add VI_successX dummy
scoreboard objectives add VI_successY dummy
scoreboard objectives add VI_successZ dummy

execute as @e[type=minecraft:villager,tag=VI_target] run data modify entity @s Glowing set value 0b
tag @e[type=minecraft:villager,tag=VI_target] remove VI_target

# kill markers silently
teleport @e[tag=VI_home,type=minecraft:villager] ~ -30 ~
kill @e[tag=VI_home,type=minecraft:villager]
teleport @e[tag=VI_jobsite] ~ -30 ~
kill @e[tag=VI_jobsite]
teleport @e[tag=VI_meetingpoint] ~ -30 ~
kill @e[tag=VI_meetingpoint]

tell @a VI_reloaded
