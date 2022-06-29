#Shooting Star (HOLY SHIT)
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455003}}}] run playsound minecraft:entity.enderman.teleport player @s
title @a[tag=spear,scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455003}}}] actionbar {"text":"Shooting Star Spear!","color":"aqua","bold":true,"italic":true}
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455003}}}] run execute anchored eyes run summon minecraft:armor_stand ^-0.25 ^1 ^1.5 {NoGravity:1,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["star_throw"],DisabledSlots:4144959}
execute at @a[scores={right_click=1..sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455003}}}] run execute anchored eyes run summon minecraft:armor_stand ^ ^ ^40 {NoGravity:1,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["target","spear"],DisabledSlots:4144959}
scoreboard players remove @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455003}}}] sp 20
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:1b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p strength 3 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:1b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p strength 3 0
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:2b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p strength 4 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:2b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p strength 4 0
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:3b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p strength 5 0
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:3b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p strength 5 0
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:4b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p strength 3 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:4b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p strength 3 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:5b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p strength 4 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:5b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p strength 4 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:6b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p strength 5 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:6b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p strength 5 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:7b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p strength 3 2
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:7b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p strength 3 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:8b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p strength 4 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:8b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p strength 4 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:8b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p speed 4 2
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:8b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p speed 4 2
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:9b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p strength 5 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:9b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p strength 5 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:9b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p speed 5 2
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:9b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p speed 5 2
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:10b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p strength 10 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:10b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p strength 10 1
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:10b,CustomModelData:455003}}}] if block ~ ~-1 ~ air run effect give @p speed 10 2
execute at @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:10b,CustomModelData:455003}}}] if block ~ ~-1 ~ cave_air run effect give @p speed 10 2
clear @a[scores={right_click=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455003}}}] carrot_on_a_stick{CustomModelData:455003}
scoreboard players add @e[tag=star_throw] timer 1
scoreboard players add @e[tag=target] timer 1
execute as @e[tag=star_throw] at @s run tp @e[limit=1,sort=nearest] ~ ~ ~ facing entity @e[tag=target,limit=1]
execute at @e[tag=star_throw,scores={timer=10..}] if block ~ ~1 ~ air run tp @e[tag=star_throw] ^ ^ ^1
execute at @e[tag=star_throw,scores={timer=10..}] if block ~ ~1 ~ air run tp @e[tag=star_throw] ^ ^ ^1
execute at @e[tag=star_throw,scores={timer=10..}] if block ~ ~1 ~ cave_air run tp @e[tag=star_throw] ^ ^ ^1
execute at @e[tag=star_throw,scores={timer=10..}] if block ~ ~1 ~ cave_air run tp @e[tag=star_throw] ^ ^ ^1
execute at @e[tag=star_throw,scores={timer=10..}] if block ~ ~1 ~ water run tp @e[tag=star_throw] ^ ^ ^1
execute at @e[tag=star_throw,scores={timer=10..}] if block ~ ~1 ~ water run tp @e[tag=star_throw] ^ ^ ^1
execute at @e[tag=star_throw,scores={timer=2..}] run particle dust 0.059 0.875 1.000 2 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
execute at @e[tag=star_throw,scores={timer=2..}] run particle dust 0.200 1.000 0.894 2 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
#execute at @e[tag=star_throw] if block ~ ~1 ~ air run tp @e[tag=star_throw] ^ ^ ^2 facing entity @e[tag=target,limit=1]
execute at @e[tag=star_throw] if entity @e[distance=1..2,tag=!spear,type=!item] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Colors:[I;1368319,13760511],FadeColors:[I;2757375]}]}}}}
execute at @e[tag=star_throw] if entity @e[distance=1..2,tag=!spear,type=!item] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;1368319,13760511],FadeColors:[I;2757375]}]}}}}
execute at @e[tag=star_throw] if entity @e[distance=1..2,tag=!spear,type=!item] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Colors:[I;1368319,13760511],FadeColors:[I;2757375]}]}}}}
execute at @e[tag=star_throw] if entity @e[type=firework_rocket,distance=0..4] run scoreboard players set @e[type=armor_stand,scores={timer=1..26}] timer 27
execute as @e[tag=star_throw,scores={timer=30..},limit=1] run execute as @a[tag=spear] run trigger spear-siderite
kill @e[type=armor_stand,scores={timer=30..}]
scoreboard players set @a[tag=spear,scores={right_click=1..}] right_click 0
execute at @e[tag=target] run execute at @e[distance=0..3,tag=star_throw] run particle dust 1.000 0.000 0.000 4 ~ ~1.8 ~ 0 0 0 0.01 2 normal
