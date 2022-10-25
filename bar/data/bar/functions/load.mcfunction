# 初始化

forceload add 0 0
setblock 0 255 0 oak_sign
setblock 0 254 0 bedrock
data merge storage bar {acBar:[]}
# 所有玩家ac栏的最大值
scoreboard objectives add acBar.max dummy
# 所有玩家ac栏的实际值
scoreboard objectives add acBar.actual dummy
# 所有玩家ac栏的文字显示
scoreboard objectives add acBar.lore dummy
# 所有玩家ac栏的颜色
scoreboard objectives add acBar.color dummy
# 系统运算
scoreboard objectives add acBar.core dummy
scoreboard players set #101 acBar.core 101
scoreboard players set #100 acBar.core 100
scoreboard players set #10 acBar.core 10
scoreboard players set #-1 acBar.core -1
scoreboard objectives add acBar.percent dummy
