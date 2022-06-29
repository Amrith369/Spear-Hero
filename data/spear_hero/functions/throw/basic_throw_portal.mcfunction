#THROW SPEAR (HOLY SHIT)
execute at @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] run playsound minecraft:entity.drowned.shoot player @a[distance=0..3]
execute at @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] run execute anchored eyes run summon minecraft:armor_stand ^-0.25 ^-1.5 ^1.5 {NoGravity:1,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["basic_throw_portal"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}]}
execute at @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] run execute anchored eyes run summon minecraft:armor_stand ^ ^ ^40 {NoGravity:1,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["target","spear"],DisabledSlots:4144959}
clear @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] carrot_on_a_stick{CustomModelData:455006}
scoreboard players add @e[tag=basic_throw_portal] timer 1
scoreboard players add @e[tag=target] timer 1
execute as @e[tag=basic_throw_portal] at @s run tp @e[limit=1,sort=nearest] ~ ~ ~ facing entity @e[tag=target,limit=1]
execute at @e[tag=basic_throw_portal,scores={timer=10..}] if block ~ ~1 ~ air run tp @e[tag=basic_throw_portal] ^ ^ ^1
execute at @e[tag=basic_throw_portal,scores={timer=10..}] if block ~ ~1 ~ air run tp @e[tag=basic_throw_portal] ^ ^ ^1
execute at @e[tag=basic_throw_portal,scores={timer=10..}] if block ~ ~1 ~ cave_air run tp @e[tag=basic_throw_portal] ^ ^ ^1
execute at @e[tag=basic_throw_portal,scores={timer=10..}] if block ~ ~1 ~ cave_air run tp @e[tag=basic_throw_portal] ^ ^ ^1
execute at @e[tag=basic_throw_portal,scores={timer=10..}] if block ~ ~1 ~ water run tp @e[tag=basic_throw_portal] ^ ^ ^1
execute at @e[tag=basic_throw_portal,scores={timer=10..}] if block ~ ~1 ~ water run tp @e[tag=basic_throw_portal] ^ ^ ^1
#execute as @e[tag=basic_throw_portal,scores={timer=2}] at @s run say What The Fuck
#execute at @e[tag=basic_throw_portal] if block ~ ~1 ~ air run tp @e[tag=basic_throw_portal] ^ ^ ^2 facing entity @e[tag=target,limit=1]
execute at @e[tag=basic_throw_portal] if block ~ ~1 ~ air if entity @e[distance=1..2,tag=!spear,type=!item] run effect give @e[distance=0..2,tag=!spear,type=#spear_hero:undead] instant_health 1 0
execute at @e[tag=basic_throw_portal] if block ~ ~1 ~ air if entity @e[distance=1..2,tag=!spear,type=!item] run effect give @e[distance=0..2,tag=!spear,type=!#spear_hero:undead] instant_damage 1 0
execute at @e[tag=basic_throw_portal] if entity @e[type=fireball,distance=0..3] run scoreboard players set @e[type=armor_stand,scores={timer=1..}] timer 48
execute as @e[tag=basic_throw_portal,scores={timer=48..49},limit=1] run scoreboard players add @a[tag=spear] spear-portal 1
kill @e[type=armor_stand,scores={timer=50..}]
scoreboard players set @a[tag=spear,scores={right_click=1..}] right_click 0
execute at @e[tag=target] run execute at @e[distance=0..3,tag=basic_throw_portal] run particle dust 1.000 0.000 0.000 4 ~ ~1.8 ~ 0 0 0 0.01 2 normal
