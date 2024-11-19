gamemode survival @s
$data modify storage damage:temp Damage set value $(damage)
execute store result score @s Damage run data get storage damage:temp Damage 10000
execute store result score @s DamageReduce run data get storage damage:temp Damage 10000
execute store result score @s HealthBefore run data get entity @s Health 10000
execute store result score @s HealthLoss run scoreboard players get @s HealthBefore
$damage @s $(damage) player_attack
execute store result score @s HealthAfter run data get entity @s Health 10000
execute store result storage damage:temp HealthLoss float 0.0001 run scoreboard players operation @s HealthLoss -= @s HealthAfter
execute store result storage damage:temp DamageReduce float 0.0001 run scoreboard players operation @s DamageReduce -= @s HealthLoss
$data modify storage damage:temp HealthLossExpected set value $(damage)f
function damage:damage_return with storage damage:temp
effect give @s instant_health 1 5 true
gamemode creative @s
