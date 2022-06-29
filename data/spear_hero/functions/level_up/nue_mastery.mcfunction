scoreboard players add @a[scores={spearcounter=1799,nueprof=0..100},tag=spear] nueprof 1
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455005}}}] run tellraw @s ["",{"text":"Current Spear Proficiency: ","bold":true,"color":"#FF850A"},{"score":{"name":"@s","objective":"nueprof"},"bold":true,"color":"red"},{"text":"%","color":"dark_red"}]
execute as @a[scores={take_energy=1..,nueprof=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455005}}}] run function spear_hero:level_up/energy_reset
execute as @a[scores={give_energy=1..,spear_ep=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455005}}}] run function spear_hero:level_up/energy_reset
scoreboard players set @a[tag=spear,scores={status=1..}] status 0
