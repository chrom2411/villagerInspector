#tell @s inspect

tag @e[type=minecraft:villager,tag=VI_target] remove VI_target

tag @e[type=minecraft:villager,distance=..1.1,limit=1] add VI_target

###########################################################
# get home.pos
###########################################################
execute store success score @s VI_successX store result score @s VI_tempX run data get entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:home".pos[0]
execute store success score @s VI_successY store result score @s VI_tempY run data get entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:home".pos[1]
execute store success score @s VI_successZ store result score @s VI_tempZ run data get entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:home".pos[2]
tellraw @s ["",{"text":"home.pos:"},{"score":{"name":"@s","objective":"VI_tempX"}},{"text":", "},{"score":{"name":"@s","objective":"VI_tempY"}},{"text":", "},{"score":{"name":"@s","objective":"VI_tempZ"}}]
#tellraw @s ["",{"text":"home.pos(success):"},{"score":{"name":"@s","objective":"VI_successX"}},{"text":", "},{"score":{"name":"@s","objective":"VI_successY"}},{"text":", "},{"score":{"name":"@s","objective":"VI_successZ"}}]

teleport @e[tag=VI_home] ~ -30 ~
kill @e[tag=VI_home]
execute if entity @s[scores={VI_successX=1,VI_successY=1,VI_successZ=1}] run summon minecraft:villager ~ 260 ~ {NoGravity:1b,Silent:1b,Glowing:1b,NoAI:1b,SleepingX:0,SleepingY:0,SleepingZ:0,Tags:["VI_home"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:9999,ShowParticles:0b}],Offers:{}}
execute if entity @s[scores={VI_successX=1,VI_successY=1,VI_successZ=1}] run data modify entity @e[type=minecraft:villager,tag=VI_home,limit=1] SleepingX set from entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:home".pos[0]
execute if entity @s[scores={VI_successX=1,VI_successY=1,VI_successZ=1}] run data modify entity @e[type=minecraft:villager,tag=VI_home,limit=1] SleepingY set from entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:home".pos[1]
execute if entity @s[scores={VI_successX=1,VI_successY=1,VI_successZ=1}] run data modify entity @e[type=minecraft:villager,tag=VI_home,limit=1] SleepingZ set from entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:home".pos[2]

###########################################################
# get job_site.pos
###########################################################
execute store success score @s VI_successX store result score @s VI_tempX run data get entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:job_site".pos[0]
execute store success score @s VI_successY store result score @s VI_tempY run data get entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:job_site".pos[1]
execute store success score @s VI_successZ store result score @s VI_tempZ run data get entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:job_site".pos[2]
tellraw @s ["",{"text":"job_site.pos:"},{"score":{"name":"@s","objective":"VI_tempX"}},{"text":", "},{"score":{"name":"@s","objective":"VI_tempY"}},{"text":", "},{"score":{"name":"@s","objective":"VI_tempZ"}}]
#tellraw @s ["",{"text":"job_site.pos(success):"},{"score":{"name":"@s","objective":"VI_successX"}},{"text":", "},{"score":{"name":"@s","objective":"VI_successY"}},{"text":", "},{"score":{"name":"@s","objective":"VI_successZ"}}]

teleport @e[tag=VI_jobsite] ~ -30 ~
kill @e[tag=VI_jobsite]
execute if entity @s[scores={VI_successX=1,VI_successY=1,VI_successZ=1}] run summon minecraft:rabbit ~ 260 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,PersistenceRequired:1b,NoAI:1b,SleepingX:0,SleepingY:0,SleepingZ:0,Tags:["VI_jobsite"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:9999,ShowParticles:0b}]}
execute if entity @s[scores={VI_successX=1,VI_successY=1,VI_successZ=1}] run data modify entity @e[tag=VI_jobsite,limit=1] SleepingX set from entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:job_site".pos[0]
execute if entity @s[scores={VI_successX=1,VI_successY=1,VI_successZ=1}] run data modify entity @e[tag=VI_jobsite,limit=1] SleepingY set from entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:job_site".pos[1]
execute if entity @s[scores={VI_successX=1,VI_successY=1,VI_successZ=1}] run data modify entity @e[tag=VI_jobsite,limit=1] SleepingZ set from entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:job_site".pos[2]

###########################################################
# get meeting_point.pos
###########################################################
execute store success score @s VI_successX store result score @s VI_tempX run data get entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:meeting_point".pos[0]
execute store success score @s VI_successY store result score @s VI_tempY run data get entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:meeting_point".pos[1]
execute store success score @s VI_successZ store result score @s VI_tempZ run data get entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:meeting_point".pos[2]
tellraw @s ["",{"text":"meeting_point.pos:"},{"score":{"name":"@s","objective":"VI_tempX"}},{"text":", "},{"score":{"name":"@s","objective":"VI_tempY"}},{"text":", "},{"score":{"name":"@s","objective":"VI_tempZ"}}]
#tellraw @s ["",{"text":"meeting_point.pos(success):"},{"score":{"name":"@s","objective":"VI_successX"}},{"text":", "},{"score":{"name":"@s","objective":"VI_successY"}},{"text":", "},{"score":{"name":"@s","objective":"VI_successZ"}}]

teleport @e[tag=VI_meetingpoint] ~ -30 ~
kill @e[tag=VI_meetingpoint]
execute if entity @s[scores={VI_successX=1,VI_successY=1,VI_successZ=1}] run summon minecraft:chicken ~ 260 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,PersistenceRequired:1b,NoAI:1b,SleepingX:0,SleepingY:0,SleepingZ:0,Tags:["VI_meetingpoint"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:9999,ShowParticles:1b}]}
execute if entity @s[scores={VI_successX=1,VI_successY=1,VI_successZ=1}] run data modify entity @e[tag=VI_meetingpoint,limit=1] SleepingX set from entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:meeting_point".pos[0]
execute if entity @s[scores={VI_successX=1,VI_successY=1,VI_successZ=1}] run data modify entity @e[tag=VI_meetingpoint,limit=1] SleepingY set from entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:meeting_point".pos[1]
execute if entity @s[scores={VI_successX=1,VI_successY=1,VI_successZ=1}] run data modify entity @e[tag=VI_meetingpoint,limit=1] SleepingZ set from entity @e[type=minecraft:villager,tag=VI_target,limit=1] Brain.memories."minecraft:meeting_point".pos[2]

data modify entity @e[type=minecraft:villager,tag=VI_target,limit=1] Glowing set value 1b
