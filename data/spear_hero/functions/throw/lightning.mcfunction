title @a[tag=spear,scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455005}}}] actionbar {"text":"Lightning Spear!","color":"#FFF019","bold":true,"italic":true}
execute at @a[scores={right_click=1..,sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455005}}}] run execute anchored eyes run summon minecraft:armor_stand ^-0.25 ^-0.5 ^1.5 {NoGravity:1,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["lite"],DisabledSlots:4144959}
execute at @a[scores={right_click=1..sp=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455005}}}] run execute anchored eyes run summon minecraft:armor_stand ^ ^ ^20 {NoGravity:1,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["target","spear"],DisabledSlots:4144959}
scoreboard players remove @a[scores={right_click=1..,sp=60..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455005}}}] sp 20
scoreboard players add @e[tag=lite] timer 1
scoreboard players add @e[tag=target] timer 1
execute as @e[tag=lite] at @s run tp @e[limit=1,sort=nearest] ~ ~ ~ facing entity @e[tag=target,limit=1]
execute at @e[tag=lite,scores={timer=10..}] if block ~ ~1 ~ air run tp @e[tag=lite] ^ ^ ^3
execute at @e[tag=lite,scores={timer=10..}] if block ~ ~1 ~ cave_air run tp @e[tag=lite] ^ ^ ^3
execute at @e[tag=lite,scores={timer=10..}] if block ~ ~1 ~ water run tp @e[tag=lite] ^ ^ ^3
execute at @e[tag=lite,scores={timer=2..}] run particle soul_fire_flame ~ ~ ~ 0 0 0 0.03 10 normal
execute at @e[tag=lite,scores={timer=2..}] run particle end_rod ~ ~ ~ 0 0 0 0.03 10 normal
execute at @e[tag=lite,scores={timer=2..}] run execute at @e[distance=0..1.6,type=!#spear_hero:exclude,tag=!spear] run summon minecraft:lightning_bolt ~ ~1 ~
execute at @e[tag=lite,scores={timer=2..}] run execute at @e[distance=0..1.6,type=!#spear_hero:exclude,tag=!spear] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;393190,16252671]}]}}}}
kill @e[type=armor_stand,scores={timer=21..}]
scoreboard players set @a[tag=spear,scores={right_click=1..}] right_click 0
