# 刷新玩家ac栏显示
data merge storage bar {acBar:[]}
data modify storage bar acBar append value "a"
data modify storage bar acBar append value "-11235569"
scoreboard players operation actual_temp acBar.core = @s acBar.actual
scoreboard players operation actual_temp acBar.core *= #101 acBar.core
scoreboard players operation actual_temp acBar.core /= @s acBar.max
scoreboard players operation remain acBar.core = #101 acBar.core
scoreboard players operation remain acBar.core -= actual_temp acBar.core
execute store result score percent_temp acBar.core run scoreboard players operation @s acBar.percent = @s acBar.actual
scoreboard players operation @s acBar.percent *= #100 acBar.core
scoreboard players operation @s acBar.percent /= @s acBar.max
scoreboard players operation percent_temp acBar.core /= #100 acBar.core
scoreboard players set space_fill acBar.core 0
execute if score space_fill acBar.core matches 0 if score percent_temp acBar.core matches 0 run scoreboard players add space_fill acBar.core 6
execute if score space_fill acBar.core matches 6 run scoreboard players operation percent_temp acBar.core = @s acBar.percent
execute if score space_fill acBar.core matches 6 run scoreboard players operation percent_temp acBar.core /= #10 acBar.core
execute if score space_fill acBar.core matches 6 if score percent_temp acBar.core matches 0 run scoreboard players add space_fill acBar.core 6
execute if score actual_temp acBar.core matches 0 run data modify storage bar acBar append value "9"
execute if score actual_temp acBar.core matches 1.. run function bar:index/surf
execute if score remain acBar.core matches 0 run scoreboard players remove actual_temp acBar.core 2
execute if score actual_temp acBar.core matches 1.. run scoreboard players remove actual_temp acBar.core 1
execute if score actual_temp acBar.core matches 64.. run function bar:index/bottom_64
execute if score actual_temp acBar.core matches 32.. run function bar:index/bottom_32
execute if score actual_temp acBar.core matches 16.. run function bar:index/bottom_16
execute if score actual_temp acBar.core matches 8.. run function bar:index/bottom_8
execute if score actual_temp acBar.core matches 4.. run function bar:index/bottom_4
execute if score actual_temp acBar.core matches 2.. run function bar:index/bottom_2
execute if score actual_temp acBar.core matches 1.. run function bar:index/bottom_1
execute if score remain acBar.core matches 0 run data modify storage bar acBar append value "-1123456789"
execute if score remain acBar.core matches 0 run function bar:index/surf
execute if score remain acBar.core matches 0 run data modify storage bar acBar append value "9"
scoreboard players operation oper_input acBar.core = remain acBar.core
function bar:negative/do
scoreboard players operation remain acBar.core = oper_output acBar.core
function bar:lore
scoreboard players operation oper_input acBar.core = space_fill acBar.core
function bar:negative/do
# 打包输出
function bar:color
title @s actionbar ["",{"nbt":"Text1","block":"0 255 0","interpret":true,"separator":"","font":"ui:bar"},{"score":{"objective":"acBar.core","name":"remain"},"font":"ui:bar"}," ",{"score":{"objective":"acBar.core","name":"oper_output"},"font":"ui:bar"},{"score":{"objective":"acBar.percent","name":"@s"}},"%",{"text":"-11234588","font":"ui:bar"},{"text":"-11235579","font":"ui:bar"},{"nbt":"Text2","block":"0 255 0","interpret":true,"font":"ui:lore"},{"text":"-1123456","font":"ui:bar"}]
#tellraw @a ["",{"nbt":"Text1","block":"0 255 0","interpret":true,"separator":"","font":"ui:bar"},{"score":{"objective":"acBar.core","name":"remain"},"font":"ui:bar"}," ",{"score":{"objective":"acBar.core","name":"oper_output"},"font":"ui:bar"},{"score":{"objective":"acBar.percent","name":"@s"}},"%",{"text":"-11234588","font":"ui:bar"},{"text":"-11235579","font":"ui:bar"},{"nbt":"Text2","block":"0 255 0","interpret":true,"font":"ui:lore"},{"text":"-1123456","font":"ui:bar"}]