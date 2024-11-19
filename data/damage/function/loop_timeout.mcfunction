scoreboard players set loopTimer Timer 0
execute if data storage damage:temp LoopWithArmor store result score armor Loop run data get storage damage:temp armor 1.00
execute if data storage damage:temp LoopWithDamage store result score damage Loop run data get storage damage:temp damage 1.00
execute store result score end Loop run data get storage damage:temp end 1.00
execute if data storage damage:temp LoopWithArmor if score armor Loop >= end Loop run data remove storage damage:temp LoopEnable
execute if data storage damage:temp LoopWithDamage if score damage Loop >= end Loop run data remove storage damage:temp LoopEnable
execute if data storage damage:temp LoopWithArmor if score armor Loop >= end Loop run data remove storage damage:temp LoopWithArmor
execute if data storage damage:temp LoopWithDamage if score damage Loop >= end Loop run data remove storage damage:temp LoopWithDamage
$execute as @a[limit=1] at @a[limit=1] run function damage:damage_with_armor {damage:$(damage),armor:$(armor)}
execute if data storage damage:temp LoopWithArmor store result storage damage:temp armor float 1 run scoreboard players add armor Loop 1
execute if data storage damage:temp LoopWithDamage store result storage damage:temp damage float 1 run scoreboard players add damage Loop 1
