scoreboard players enable @a[advancements={spear_hero:spears/portal=true}] a_set
scoreboard players enable @a[advancements={spear_hero:spears/portal=true}] b_set
scoreboard players enable @a[scores={portalprof=100..},advancements={spear_hero:spears/portal=true}] c_set
scoreboard players enable @a[advancements={spear_hero:spears/portal=true}] a_warp
scoreboard players enable @a[advancements={spear_hero:spears/portal=true}] b_warp
scoreboard players enable @a[scores={portalprof=100..},advancements={spear_hero:spears/portal=true}] c_warp
#SET WARP A
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}},tag=spear,scores={a_set=1..}] {"text":"[NOTICE] Warp Point A Set","color":"#9DE1A9"}
execute at @a[tag=spear,scores={a_set=1..}] run execute store result score z spear_a_coords run data get entity @p[tag=spear] Pos[2]
execute at @a[tag=spear,scores={a_set=1..}] run execute store result score y spear_a_coords run data get entity @p[tag=spear] Pos[1]
execute at @a[tag=spear,scores={a_set=1..}] run execute store result score x spear_a_coords run data get entity @p[tag=spear] Pos[0]
#execute at @a[tag=spear,scores={a_set=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["a"]}
#SET WARP B
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}},tag=spear,scores={b_set=1..}] {"text":"[NOTICE] Warp Point B Set","color":"#9DE1A9"}
execute at @a[tag=spear,scores={b_set=1..}] run execute store result score z spear_b_coords run data get entity @p[tag=spear] Pos[2]
execute at @a[tag=spear,scores={b_set=1..}] run execute store result score y spear_b_coords run data get entity @p[tag=spear] Pos[1]
execute at @a[tag=spear,scores={b_set=1..}] run execute store result score x spear_b_coords run data get entity @p[tag=spear] Pos[0]
#SET WARP C
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}},tag=spear,scores={c_set=1..}] {"text":"[NOTICE] Warp Point C Set","color":"#9DE1A9"}
execute at @a[tag=spear,scores={c_set=1..}] run execute store result score z spear_c_coords run data get entity @p[tag=spear] Pos[2]
execute at @a[tag=spear,scores={c_set=1..}] run execute store result score y spear_c_coords run data get entity @p[tag=spear] Pos[1]
execute at @a[tag=spear,scores={c_set=1..}] run execute store result score x spear_c_coords run data get entity @p[tag=spear] Pos[0]
#TELEPORT TO POINT A
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}},tag=spear,scores={a_warp=1..,sp=50..}] {"text":"[NOTICE] Warp Successful","color":"#FFDF40"}
execute at @a[tag=spear,scores={a_warp=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["a"]}
execute store result entity @e[tag=a,limit=1] Pos[0] double 1 run scoreboard players get x spear_a_coords
execute store result entity @e[tag=a,limit=1] Pos[1] double 1 run scoreboard players get y spear_a_coords
execute store result entity @e[tag=a,limit=1] Pos[2] double 1 run scoreboard players get z spear_a_coords
tp @a[tag=spear,scores={a_warp=1..,sp=50..}] @e[tag=a,limit=1]
execute at @a[tag=spear,scores={a_warp=1..,sp=50..}] run tp @a[tag=spear-party,distance=0..4] @e[tag=a,limit=1]
execute at @a[tag=spear,scores={a_warp=1..,sp=50..}] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#TELEPORT TO POINT B
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}},tag=spear,scores={b_warp=1..,sp=50..}] {"text":"[NOTICE] Warp Successful","color":"#FFDF40"}
execute at @a[tag=spear,scores={b_warp=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["b"]}
execute store result entity @e[tag=b,limit=1] Pos[0] double 1 run scoreboard players get x spear_b_coords
execute store result entity @e[tag=b,limit=1] Pos[1] double 1 run scoreboard players get y spear_b_coords
execute store result entity @e[tag=b,limit=1] Pos[2] double 1 run scoreboard players get z spear_b_coords
tp @a[tag=spear,scores={b_warp=1..,sp=50..}] @e[tag=b,limit=1]
execute at @a[tag=spear,scores={b_warp=1..,sp=50..}] run tp @a[tag=spear-party,distance=0..4] @e[tag=b,limit=1]
execute at @a[tag=spear,scores={b_warp=1..,sp=50..}] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#TELEPORT TO POINT C
tellraw @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}},tag=spear,scores={c_warp=1..,sp=50..}] {"text":"[NOTICE] Warp Successful","color":"#FFDF40"}
execute at @a[tag=spear,scores={c_warp=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["c"]}
execute store result entity @e[tag=c,limit=1] Pos[0] double 1 run scoreboard players get x spear_c_coords
execute store result entity @e[tag=c,limit=1] Pos[1] double 1 run scoreboard players get y spear_c_coords
execute store result entity @e[tag=c,limit=1] Pos[2] double 1 run scoreboard players get z spear_c_coords
tp @a[tag=spear,scores={c_warp=1..,sp=50..}] @e[tag=c,limit=1]
execute at @a[tag=spear,scores={c_warp=1..,sp=50..}] run tp @a[tag=spear-party,distance=0..4] @e[tag=c,limit=1]
execute at @a[tag=spear,scores={c_warp=1..,sp=50..}] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#REMOVE SP & SCORES
scoreboard players remove @a[tag=spear,scores={a_warp=1..,sp=50..}] sp 50
scoreboard players remove @a[tag=spear,scores={b_warp=1..,sp=50..}] sp 50
scoreboard players remove @a[tag=spear,scores={c_warp=1..,sp=50..}] sp 50
scoreboard players set @a[tag=spear,scores={b_warp=1..}] b_warp 0
scoreboard players set @a[tag=spear,scores={a_warp=1..}] a_warp 0
scoreboard players set @a[tag=spear,scores={c_warp=1..}] c_warp 0
scoreboard players set @a[tag=spear,scores={a_set=1..}] a_set 0
scoreboard players set @a[tag=spear,scores={b_set=1..}] b_set 0
scoreboard players set @a[tag=spear,scores={c_set=1..}] c_set 0
kill @e[tag=a]
kill @e[tag=b]
kill @e[tag=c]
#Proficiency
scoreboard players add @a[scores={spearcounter=1799,portalprof=0..100},tag=spear] portalprof 1
tag @a[tag=spear,scores={portalprof=100}] add port
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] run tellraw @p ["",{"text":"Current Spear Proficiency: ","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"portalprof"},"bold":true,"color":"red"},{"text":"%","color":"dark_red"}]
execute as @a[scores={take_energy=1..,portalprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] run function spear_hero:energy_reset
execute as @a[scores={give_energy=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] run function spear_hero:energy_reset
#scoreboard players set @a[tag=spear,scores={status=1..}] status 0
