#SP METER
scoreboard players add @a[tag=spear] sp 0
scoreboard players add @a[tag=spear,scores={sp=..295,spearcounter=600}] sp 5
scoreboard players add @a[tag=spear,scores={sp=..295,spearcounter=1200}] sp 5
scoreboard players add @a[tag=spear,scores={sp=..295,spearcounter=1800}] sp 5
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}},scores={sp=300..349,iron_smelt=1..,spearcounter=600}] sp 2
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}},scores={sp=350..399,iron_smelt=2..,spearcounter=600}] sp 2
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}},scores={sp=400..449,iron_smelt=3..,spearcounter=600}] sp 2
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}},scores={sp=450..499,iron_smelt=4..,spearcounter=600}] sp 2
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}},scores={sp=500..549,iron_smelt=5..,spearcounter=600}] sp 2
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}},scores={sp=550..574,iron_smelt=6..,spearcounter=600}] sp 2
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}},scores={sp=575..599,iron_smelt=7..,spearcounter=600}] sp 2
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}},scores={sp=600..624,iron_smelt=8..,spearcounter=600}] sp 2
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}},scores={sp=625..649,iron_smelt=9..,spearcounter=600}] sp 2
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}},scores={sp=650..699,iron_smelt=10..,spearcounter=600}] sp 2
execute as @a[tag=spear] run title @s[tag=spear,x_rotation=45..90] actionbar [{"text":"SP: "},{"score":{"name":"@s","objective":"sp"},"bold":"true","color":"red"},{"text":"/300","bold":"true","color":"red"}]
#FAFIK RANDOMNESS
function fafik77:rng/tick
#ENERGY STUFF
execute as @a[tag=spear,scores={check_energy=1..}] run tellraw @s ["",{"text":"Weapon Energy Points: ","bold":true,"color":"red"},{"score":{"name":"@s","objective":"spear_ep"},"bold":true,"color":"gold"},{"text":" available.","color":"gold"}]
scoreboard players set @a[tag=spear,scores={check_energy=1..}] check_energy 0
execute at @a[tag=spear,scores={give_energy=1..}] run particle lava ~ ~1 ~ 0.3 0 0.3 0.03 0 normal
execute as @a[tag=spear,scores={status_all=1..}] run function spear_hero:level_up/status_all
#INITIATE
execute as @a[tag=spear] run give @s[tag=!starto] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Legendary Spear","color":"gold","bold":true}',Lore:['{"text":"-Abilities Unlocked-","italic":true}','{"text":"Equip Bonus: attack 3 defense 3"}']},HideFlags:1,Unbreakable:1b,lw:1b,CustomModelData:455001,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-1541227609,501435630,-1765831749,753998036],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-1326432688,-1848750163,-1369826737,-1304922885]}]} 1
execute as @a[tag=spear] run tellraw @s[tag=!starto] ["",{"text":"You have become the "},{"text":"Spear Hero","color":"red"}]
tag @a[tag=spear] add starto
tag @a[tag=spear] add hero
#SPEAR COUNTER
scoreboard players add @a[tag=spear] spearcounter 1
scoreboard players set @a[tag=spear,scores={spearcounter=1800..}] spearcounter 0
#UNLOCK SPEARS
#-ROPE UNLOCK
tellraw @a[tag=spear,scores={absorb=1..},advancements={spear_hero:spears/rope=false},nbt={Inventory:[{id:"minecraft:string"}]}] {"text":"Rope Spear: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=spear,scores={absorb=1..},nbt={Inventory:[{id:"minecraft:string"}]}] only spear_hero:spears/rope
#-SIDERITE UNLOCK
tellraw @a[tag=spear,scores={absorb=1..},advancements={spear_hero:spears/siderite=false},nbt={Inventory:[{id:"minecraft:conduit"}]}] {"text":"Siderite Spear: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=spear,scores={absorb=1..},nbt={Inventory:[{id:"minecraft:conduit"}]}] only spear_hero:spears/siderite
#IRON UNLOCK
tellraw @a[tag=spear,scores={absorb=1..},advancements={spear_hero:spears/iron=false},nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] {"text":"Iron Spear: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=spear,scores={absorb=1..},nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] only spear_hero:spears/iron
#NUE SPEAR
tellraw @a[tag=spear,scores={absorb=1..},advancements={spear_hero:spears/nue=false},nbt={Inventory:[{id:"minecraft:blaze_rod"}]}] {"text":"Nue Spear: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=spear,scores={absorb=1..},nbt={Inventory:[{id:"minecraft:blaze_rod"}]}] only spear_hero:spears/nue
#DRAGON HOURGLASS SAND SPEAR
tellraw @a[tag=spear,scores={absorb=1..},advancements={spear_hero:spears/portal=false},nbt={Inventory:[{id:"minecraft:redstone"}]}] {"text":"Dragon Hourglass Sand Spear: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=spear,scores={absorb=1..},nbt={Inventory:[{id:"minecraft:redstone"}]}] only spear_hero:spears/portal
#WATER DRAGON HARPOON SPEAR
tellraw @a[tag=spear,scores={absorb=1..},advancements={spear_hero:spears/harpoon=false},nbt={Inventory:[{id:"minecraft:trident"}]}] {"text":"Water Dragon Harpoon Spear: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=spear,scores={absorb=1..},nbt={Inventory:[{id:"minecraft:trident"}]}] only spear_hero:spears/harpoon
#SPEAR OF LUST
tellraw @a[tag=spear,advancements={spear_hero:spears/lust=false},scores={lust=1..}] {"text":"Cursed Series: conditions met","italic":true,"color":"dark_red"}
tag @a[advancements={spear_hero:spears/lust=true}] add lust
advancement grant @a[tag=spear,scores={lust=1..}] only spear_hero:spears/lust
#MINUTE HAND SPEAR
tellraw @a[tag=spear,scores={absorb=1..},advancements={spear_hero:spears/minute=false},nbt={Inventory:[{id:"minecraft:clock"}]}] {"text":"Minute Hand of the Dragon's Era Spear: conditions met","italic":true,"color":"gold"}
advancement grant @a[tag=spear,scores={absorb=1..},nbt={Inventory:[{id:"minecraft:clock"}]}] only spear_hero:spears/minute
#BASIC SPEAR THROW
execute as @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455001}}}] run function spear_hero:throw/basic_throw
execute as @e[tag=basic_throw] run function spear_hero:throw/basic_throw
execute as @e[tag=basic_throw_portal] run function spear_hero:throw/basic_throw_portal
#SPEAR CHANGE
execute at @a[tag=spear,scores={select=1..}] run tp @e[distance=0..5,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}] ~ ~ ~
execute at @a[tag=spear,scores={select=1..}] run data merge entity @e[type=item,limit=1,distance=0..6,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}] {PickupDelay:1,Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run tellraw @a[distance=0..4,tag=spear,scores={select=1..}] ["",{"text":"===========","bold":true,"color":"white"},{"text":"\n"},{"text":"Change Spear:","italic":true},{"text":"\n"},{"text":"===========","bold":true,"color":"white"},{"text":"\n"},{"text":"Starter Spear","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger basic_se add 1"}}]
#SWITCH SPEAR
#=BASIC
execute as @a[tag=spear,scores={basic_se=1..}] run clear @s carrot_on_a_stick{lw:1b}
execute as @a[tag=spear,scores={basic_se=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[tag=spear,scores={basic_se=1..}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Legendary Spear","color":"gold","bold":true}',Lore:['{"text":"-Abilities Unlocked-","italic":true}','{"text":"Equip Bonus: attack 3 defense 3"}']},HideFlags:1,Unbreakable:1b,lw:1b,CustomModelData:455001,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-2014460263,-1927723106,-1932781231,-724833908],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;1278248393,-962705035,-1520872544,595421689],Slot:"mainhand"}]} 1
#=ROPE
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455002}}}] run function spear_hero:level_up/rope_mastery
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run execute at @a[distance=0..4,tag=spear,scores={select=1..}] run tellraw @p[distance=0,advancements={spear_hero:spears/rope=true}] {"text":"Rope Spear","bold":true,"color":"#E37019","clickEvent":{"action":"run_command","value":"/trigger spear-rope add 1"}}
execute as @a[tag=spear,scores={spear-rope=1..}] run clear @s carrot_on_a_stick{lw:1b}
execute as @a[tag=spear,scores={spear-rope=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=spear,scores={spear-rope=1..}] ropeprof 0
scoreboard players add @a[tag=spear,scores={spear-rope=1..}] rope_smelt 0
execute as @a[tag=spear,scores={spear-rope=1..,ropeprof=0..9,rope_smelt=0}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Rope Spear 0/10 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-","italic":true}','{"text":"Equip Bonus:"}','{"text":"Skill: Air Strike Javelin"}','{"text":"Special Equip Effect:"}','{"text":"Rope"}','{"text":"mastery level: 0"}']},HideFlags:1,Unbreakable:1b,lw:1b,CustomModelData:455002,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-433243407,2071743856,-1800089230,-202130616],Slot:"mainhand"}]} 1
execute as @a[tag=spear,scores={spear-rope=1..,ropeprof=9..,rope_smelt=0}] run function spear_hero:level_up/basic
execute as @a[tag=spear,scores={spear-rope=1..,rope_smelt=1..}] run function spear_hero:level_up/rope_smelt
execute as @a[tag=spear,scores={spear-rope=1..,ropeprof=0..9,rope_smelt=0}] run scoreboard players set @a[tag=spear,scores={spear-rope=1..}] spear-rope 0
#=SIDERITE
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455003}}}] run function spear_hero:level_up/siderite_mastery
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run execute at @a[distance=0..4,tag=spear,scores={select=1..}] run tellraw @p[distance=0,advancements={spear_hero:spears/siderite=true}] {"text":"Siderite Spear","bold":true,"color":"#CB487D","clickEvent":{"action":"run_command","value":"/trigger spear-siderite add 1"}}
execute as @a[tag=spear,scores={spear-siderite=1..}] run clear @s carrot_on_a_stick{lw:1b}
execute as @a[tag=spear,scores={spear-siderite=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=spear,scores={spear-siderite=1..}] sideriteprof 0
scoreboard players add @a[tag=spear,scores={spear-siderite=1..}] siderite_smelt 0
execute as @a[tag=spear,scores={spear-siderite=1..,sideriteprof=0..9,siderite_smelt=0}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Siderite Spear 0/20 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-","italic":true}','{"text":"Equip Bonus:"}','{"text":"Skill: Shooting Star Spear"}','{"text":"mastery level: 0"}']},HideFlags:1,Unbreakable:1b,lw:1b,CustomModelData:455003,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-1184932525,-1943581728,-1907241072,-701180472],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.01,Operation:0,UUID:[I;1516653519,-455261898,-1211199528,749041714],Slot:"mainhand"}]} 1
execute as @a[tag=spear,scores={spear-siderite=1..,sideriteprof=9..,siderite_smelt=0}] run function spear_hero:level_up/basic
execute as @a[tag=spear,scores={spear-siderite=1..,siderite_smelt=1..}] run function spear_hero:level_up/siderite_smelt
execute as @a[tag=spear,scores={spear-siderite=1..,sideriteprof=0..9,siderite_smelt=0}] run scoreboard players set @a[tag=spear,scores={spear-siderite=1..}] spear-siderite 0
#-IRON
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}}] run function spear_hero:level_up/iron_mastery
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run execute at @a[distance=0..4,tag=spear,scores={select=1..}] run tellraw @p[distance=0,advancements={spear_hero:spears/iron=true}] {"text":"Iron Spear","bold":true,"color":"#703F3F","clickEvent":{"action":"run_command","value":"/trigger spear-iron add 1"}}
execute as @a[tag=spear,scores={spear-iron=1..}] run clear @s carrot_on_a_stick{lw:1b}
execute as @a[tag=spear,scores={spear-iron=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=spear,scores={spear-iron=1..}] ironprof 0
scoreboard players add @a[tag=spear,scores={spear-iron=1..}] iron_smelt 0
execute as @a[tag=spear,scores={spear-iron=1..,ironprof=0..9,iron_smelt=0}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Iron Spear 0/30 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-","italic":true}','{"text":"Equip Bonus:"}','{"text":"Skill: Chaos Spear"}','{"text":"mastery level: 0"}']},HideFlags:1,Unbreakable:1b,lw:1b,CustomModelData:455004,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;980146655,473451077,-1159922797,-950524311],Slot:"mainhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;-1915333882,195053725,-2033775195,1779655168],Slot:"mainhand"}]} 1
execute as @a[tag=spear,scores={spear-iron=1..,ironprof=9..,iron_smelt=0}] run function spear_hero:level_up/basic
execute as @a[tag=spear,scores={spear-iron=1..,iron_smelt=1..}] run function spear_hero:level_up/iron_smelt
execute as @a[tag=spear,scores={spear-iron=1..,ironprof=0..9,iron_smelt=0}] run scoreboard players set @a[tag=spear,scores={spear-iron=1..}] spear-iron 0
#-NUE
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455005}}}] run function spear_hero:level_up/nue_mastery
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run execute at @a[distance=0..4,tag=spear,scores={select=1..}] run tellraw @p[distance=0,advancements={spear_hero:spears/nue=true}] {"text":"Nue Spear","bold":true,"color":"#FF850A","clickEvent":{"action":"run_command","value":"/trigger spear-nue add 1"}}
execute as @a[tag=spear,scores={spear-nue=1..}] run clear @s carrot_on_a_stick{lw:1b}
execute as @a[tag=spear,scores={spear-nue=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=spear,scores={spear-nue=1..}] nueprof 0
scoreboard players add @a[tag=spear,scores={spear-nue=1..}] nue_smelt 0
execute as @a[tag=spear,scores={spear-nue=1..,nueprof=0..9,nue_smelt=0}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Nue Spear 0/20 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-","italic":true}','{"text":"Equip Bonus:"}','{"text":"Skill: Lightning Spear"}','{"text":"mastery level: 0"}']},HideFlags:1,Unbreakable:1b,lw:1b,CustomModelData:455005,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-87498411,-1801894468,-1981178596,1956618793],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.01,Operation:0,UUID:[I;-1117940551,-1948892114,-1263387218,293528512],Slot:"mainhand"}]} 1
execute as @a[tag=spear,scores={spear-nue=1..,nueprof=9..,nue_smelt=0}] run function spear_hero:level_up/basic
execute as @a[tag=spear,scores={spear-nue=1..,nue_smelt=1..}] run function spear_hero:level_up/nue_smelt
execute as @a[tag=spear,scores={spear-nue=1..,nueprof=0..9,nue_smelt=0}] run scoreboard players set @a[tag=spear,scores={spear-nue=1..}] spear-nue 0
#-PORTAL
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] run function spear_hero:level_up/portal_mastery
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run execute at @a[distance=0..4,tag=spear,scores={select=1..}] run tellraw @p[distance=0,advancements={spear_hero:spears/portal=true}] {"text":"Portal Spear","bold":true,"color":"#eb5b60","clickEvent":{"action":"run_command","value":"/trigger spear-portal add 1"}}
execute as @a[tag=spear,scores={spear-portal=1..}] run clear @s carrot_on_a_stick{lw:1b}
execute as @a[tag=spear,scores={spear-portal=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=spear,scores={spear-portal=1..}] portalprof 0
scoreboard players add @a[tag=spear,scores={spear-portal=1..}] portal_smelt 0
execute as @a[tag=spear,scores={spear-portal=1..,portalprof=0..9,portal_smelt=0}] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Portal Spear 0/40 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-","italic":true}','{"text":"Equip Bonus:"}','{"text":"Skill: Portal Spear"}','{"text":"mastery level: 0"}']},HideFlags:1,Unbreakable:1b,lw:1b,CustomModelData:455006,Enchantments:[{id:"minecraft:knockback",lvl:1s},{id:"minecraft:sweeping",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1287016703,-394310988,-1080551537,-1266251716],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.01,Operation:0,UUID:[I;750772501,-417247763,-1803741845,-1613098160],Slot:"mainhand"}]} 1
execute as @a[tag=spear,scores={spear-portal=1..,portalprof=10..,portal_smelt=0}] run function spear_hero:level_up/basic
execute as @a[tag=spear,scores={spear-portal=1..,portal_smelt=1..}] run function spear_hero:level_up/portal_smelt
execute as @a[tag=spear,scores={spear-portal=1..,portalprof=0..9,portal_smelt=0}] run scoreboard players set @a[tag=spear,scores={spear-portal=1..}] spear-portal 0
#SKILLS
#-AIR STRIKE
execute as @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455002}}}] run function spear_hero:throw/air_throw
execute as @e[tag=air_throw] run function spear_hero:throw/air_throw
#-SHOOTING STAR
execute as @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455003}}}] run function spear_hero:throw/shooting_star
execute as @e[tag=star_throw] run function spear_hero:throw/shooting_star
#-CHAOS SPEAR
execute as @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}}] run function spear_hero:throw/chaos
execute as @e[tag=chaos_throw] run function spear_hero:throw/chaos
#-LIGHTNING SPEAR
execute as @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455005}}}] run function spear_hero:throw/lightning
execute as @e[tag=lite] run function spear_hero:throw/lightning
#-PORTAL
execute as @a[scores={right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] run function spear_hero:throw/basic_throw_portal
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455006}}}] run function spear_hero:portal
#ENABLE SCORES
scoreboard players enable @a[tag=spear] craft_sp_potion
scoreboard players enable @a[tag=spear] absorb
scoreboard players enable @a[tag=spear] basic_se
scoreboard players enable @a[tag=spear] lust
scoreboard players enable @a[tag=spear,advancements={spear_hero:spears/rope=true}] spear-rope
scoreboard players enable @a[tag=spear,advancements={spear_hero:spears/siderite=true}] spear-siderite
scoreboard players enable @a[tag=spear,advancements={spear_hero:spears/iron=true}] spear-iron
scoreboard players enable @a[tag=spear,advancements={spear_hero:spears/nue=true}] spear-nue
scoreboard players enable @a[tag=spear,advancements={spear_hero:spears/portal=true}] spear-portal
scoreboard players enable @a[tag=spear] status
scoreboard players enable @a[tag=spear] status_all
scoreboard players enable @a[tag=spear] party
scoreboard players enable @a[tag=spear] disband
scoreboard players enable @a[tag=spear] give_energy
scoreboard players enable @a[tag=spear] take_energy
scoreboard players enable @a[tag=spear] check_energy
scoreboard players enable @a[tag=spear] smelt
#SMELT
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455002}}}] run function spear_hero:level_up/smelt
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455003}}}] run function spear_hero:level_up/smelting_siderite
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455004}}}] run function spear_hero:level_up/smelting_iron
execute as @a[scores={smelt=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:455005}}}] run function spear_hero:level_up/smelting_nue
#POTIONS
execute as @a[tag=spear,nbt={SelectedItem:{id:"minecraft:blaze_powder"}},scores={craft_sp_potion=1..}] run function spear_hero:crafting/soulsoothing
scoreboard players add @a[tag=spear,scores={sp=..300},nbt={AbsorptionAmount:20f}] sp 50
clear @a[tag=spear,nbt={AbsorptionAmount:20f}] glass_bottle 1
#PARTY SYSTEM
execute as @a[tag=spear,scores={party=1..}] run execute at @s run tag @e[distance=1..2] add spear-party
execute as @a[tag=spear,scores={party=1..}] run execute at @e[tag=spear-party] run tellraw @a[tag=spear,scores={party=1..}] ["",{"text":"[Notice] ","bold":true,"color":"green"},{"selector":"@e[tag=spear-party,limit=1,sort=nearest]","bold":true,"color":"white"},{"text":" Has Joined Your Party!","bold":true,"color":"green"}]
execute as @a[tag=spear,scores={disband=1..}] run execute at @s run tag @e[tag=spear-party] remove spear-party
scoreboard players set @a[tag=spear,scores={party=1..}] party 0
scoreboard players set @a[tag=spear,scores={disband=1..}] disband 0
#RESET SCORES
scoreboard players add @e[tag=randomize] timer 1
kill @e[tag=randomize,scores={timer=10..}]
scoreboard players set @a[tag=spear,scores={basic_se=1..}] basic_se 0
scoreboard players set @a[tag=spear,scores={select=1..}] select 0
