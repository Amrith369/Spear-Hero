scoreboard players add @a[scores={spearcounter=1799,portalprof=0..100},tag=spear] portalprof 1
execute as @a[tag=spear,scores={status=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] run tellraw @s ["",{"text":"Current Spear Proficiency: ","bold":true,"color":"#eb5b60"},{"score":{"name":"@s","objective":"portalprof"},"bold":true,"color":"red"},{"text":"%","color":"dark_red"}]
execute as @a[tag=spear,scores={take_energy=1..,portalprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] run function spear_hero:level_up/energy_reset
execute as @a[tag=spear,scores={give_energy=1..,spear_ep=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] run function spear_hero:level_up/energy_reset
scoreboard players set @a[tag=spear,scores={status=1..}] status 0
