$data modify storage damage:temp start set value $(start)
$data modify storage damage:temp end set value $(end)
$data modify storage damage:temp damage set value $(damage)
$data modify storage damage:temp armor set value $(start)
data modify storage damage:temp LoopEnable set value 1
data modify storage damage:temp LoopWithArmor set value 1
scoreboard players set loopTimer Timer 0
scoreboard players set loopTimer Timeout 30
tellraw @s [{"text":"======loop started======"}]