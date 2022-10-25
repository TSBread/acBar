# 无值 设为空白
execute unless score @s acBar.lore matches -2147483648..2147483647 run data modify block 0 255 0 Text2 set value '{"text":"\\u0001"}'

execute if score @s acBar.lore matches 0 run data modify block 0 255 0 Text2 set value '{"translate":"lore_test_0"}'
execute if score @s acBar.lore matches 1 run data modify block 0 255 0 Text2 set value '{"translate":"lore_test_1"}'
execute if score @s acBar.lore matches 2 run data modify block 0 255 0 Text2 set value '{"translate":"lore_test_2"}'