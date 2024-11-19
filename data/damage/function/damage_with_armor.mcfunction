$attribute @s armor base set $(armor)
tellraw @s [{"text":"============"}]
$tellraw @s [{"text":"Armor now:"},{"text":"$(armor)","color":"aqua"}]
$function damage:damage {damage:$(damage)}
attribute @s armor base set 0
