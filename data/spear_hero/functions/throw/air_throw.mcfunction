#Air Strike (HOLY SHIT)
execute at @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455002}}}] run playsound minecraft:entity.elder_guardian.hurt player @a
title @a[tag=spear,scores={right_click=1..,sp=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455002}}}] actionbar {"text":"Air Strike Javelin!","color":"red","bold":true,"italic":true}
execute at @a[scores={right_click=1..,sp=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455002}}}] run kill @e[tag=target,limit=1]
execute at @a[scores={right_click=1..,sp=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455002}}}] run execute anchored eyes run summon minecraft:armor_stand ^-0.25 ^-1.5 ^1.5 {NoGravity:1,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["air_throw"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455002}}]}
execute at @a[scores={right_click=1..sp=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455002}}}] run execute anchored eyes run summon minecraft:armor_stand ^ ^ ^40 {NoGravity:1,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["target","spear"],DisabledSlots:4144959}
scoreboard players remove @a[scores={right_click=1..,sp=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455002}}}] sp 2
scoreboard players add @a[scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:1b,CustomModelData:455002}}}] sp 2
scoreboard players add @a[scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:2b,CustomModelData:455002}}}] sp 4
scoreboard players add @a[scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:3b,CustomModelData:455002}}}] sp 6
scoreboard players add @a[scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:4b,CustomModelData:455002}}}] sp 8
scoreboard players add @a[scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:5b,CustomModelData:455002}}}] sp 10
scoreboard players add @a[scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:6b,CustomModelData:455002}}}] sp 12
scoreboard players add @a[scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:7b,CustomModelData:455002}}}] sp 14
scoreboard players add @a[scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:8b,CustomModelData:455002}}}] sp 16
scoreboard players add @a[scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:9b,CustomModelData:455002}}}] sp 18
scoreboard players add @a[scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{ench:10b,CustomModelData:455002}}}] sp 20
clear @a[scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455002}}}] carrot_on_a_stick{CustomModelData:455002}
scoreboard players add @e[tag=air_throw] timer 1
scoreboard players add @e[tag=target] timer 1
execute as @e[tag=air_throw] at @s run tp @e[limit=1,sort=nearest] ~ ~ ~ facing entity @e[tag=target,limit=1]
execute at @e[tag=air_throw,scores={timer=10..}] if block ~ ~1 ~ air run tp @e[tag=air_throw] ^ ^ ^1
execute at @e[tag=air_throw,scores={timer=10..}] if block ~ ~1 ~ air run tp @e[tag=air_throw] ^ ^ ^1
execute at @e[tag=air_throw,scores={timer=10..}] if block ~ ~1 ~ cave_air run tp @e[tag=air_throw] ^ ^ ^1
execute at @e[tag=air_throw,scores={timer=10..}] if block ~ ~1 ~ cave_air run tp @e[tag=air_throw] ^ ^ ^1
execute at @e[tag=air_throw,scores={timer=10..}] if block ~ ~1 ~ water run tp @e[tag=air_throw] ^ ^ ^1
execute at @e[tag=air_throw,scores={timer=10..}] if block ~ ~1 ~ water run tp @e[tag=air_throw] ^ ^ ^1
execute at @e[tag=air_throw,scores={timer=10..}] if block ~ ~1 ~ grass run tp @e[tag=air_throw] ^ ^ ^1
execute at @e[tag=air_throw,scores={timer=10..}] if block ~ ~1 ~ grass run tp @e[tag=air_throw] ^ ^ ^1
execute at @e[tag=air_throw,scores={timer=10..}] if block ^ ^ ^2 lime_stained_glass run scoreboard players set @e[type=armor_stand,tag=air_throw,scores={timer=10..28}] timer 29
execute at @e[tag=air_throw,scores={timer=10..}] if block ^ ^ ^2 lime_stained_glass run fill ^ ^2 ^2 ^ ^ ^1 air destroy
execute at @e[tag=air_throw,scores={timer=2..}] run particle dust 1.000 0.000 0.000 4 ~ ~1.8 ~ 0 0 0 0.1 1 normal
#execute at @e[tag=air_throw] if block ~ ~1 ~ air run tp @e[tag=air_throw] ^ ^ ^2 facing entity @e[tag=target,limit=1]
#execute at @e[tag=air_throw] if entity @e[distance=1..2,tag=!spear,type=!item] run execute at @e[distance=1..2,tag=!spear,type=!item] run summon minecraft:fireball ^ ^1.6 ^-1 {Tags:["spear"],ExplosionPower:1,direction:[0.0,-2.0,0.0],power:[0.0,-2.0,0.0],Item:{id:"minecraft:redstone_block",Count:1b}}
execute at @e[tag=air_throw] if block ~ ~1 ~ air if entity @e[distance=1..2,tag=!spear,type=!item] run effect give @e[distance=0..2,tag=!spear,type=#spear_hero:undead] instant_health 1 0
execute at @e[tag=air_throw] if block ~ ~1 ~ air if entity @e[distance=1..2,tag=!spear,type=!item] run effect give @e[distance=0..2,tag=!spear,type=!#spear_hero:undead] instant_damage 1 0
execute at @e[tag=air_throw] if entity @e[type=fireball,distance=0..4] run scoreboard players set @e[type=armor_stand,scores={timer=1..26}] timer 27
execute as @e[tag=air_throw,scores={timer=30..},limit=1] run execute as @a[tag=spear] run trigger spear-rope
kill @e[type=armor_stand,scores={timer=30..}]
scoreboard players set @a[tag=spear,scores={right_click=1..}] right_click 0
execute at @e[tag=target] run execute at @e[distance=0..3,tag=air_throw] run particle dust 1.000 0.000 0.000 4 ~ ~1.8 ~ 0 0 0 0.01 2 normal
