# 无值 设为#ffffff
execute unless score @s acBar.color matches -2147483648..2147483647 run summon area_effect_cloud 0 255 0 {Duration:1,Tags:["acBar_color"],CustomName:'{"text":"","color":"#ffffff"}'}
execute if score @s acBar.color matches 0 run summon area_effect_cloud 0 255 0 {Duration:1,Tags:["acBar_color"],CustomName:'{"text":"","color":"#114514"}'}
execute if score @s acBar.color matches 1 run summon area_effect_cloud 0 255 0 {Duration:1,Tags:["acBar_color"],CustomName:'{"text":"","color":"#f92672"}'}
execute if score @s acBar.color matches 2 run summon area_effect_cloud 0 255 0 {Duration:1,Tags:["acBar_color"],CustomName:'{"text":"","color":"#e9ec00"}'}
# 更新转码牌子
data modify block 0 255 0 Text1 set value '{"selector":"@e[tag=acBar_color,limit=1]","extra":[{"nbt":"acBar[]","storage":"bar","separator":""}]}'