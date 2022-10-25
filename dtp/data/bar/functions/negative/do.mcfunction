scoreboard players set negative acBar.core 0
scoreboard players add oper_input acBar.core 0
scoreboard players set oper_output acBar.core 0

execute if score oper_input acBar.core matches 1.. run function bar:negative/positive
execute if score oper_input acBar.core matches ..-1 run function bar:negative/list/-
execute if score negative acBar.core matches 1 run scoreboard players operation oper_output acBar.core *= #-1 acBar.core