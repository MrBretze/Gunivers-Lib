# SetVectors

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Import: Vectors, Tmp7

# Input values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# Ouput values:
# - None

scoreboard players operation @s Tmp = @s VectorX
scoreboard players operation @s Tmp2 = @s VectorY
scoreboard players operation @s Tmp3 = @s VectorZ
scoreboard players operation @s Tmp *= @s VectorSpeed
scoreboard players operation @s Tmp2 *= @s VectorSpeed
scoreboard players operation @s Tmp3 *= @s VectorSpeed
scoreboard players operation @s Tmp /= 1000 Constant
scoreboard players operation @s Tmp2 /= 1000 Constant
scoreboard players operation @s Tmp3 /= 1000 Constant

tellraw @a[tag=DebugMovement] ["",{"text":"   -=[ Debug Movement ]=-","color":"green"}]
tellraw @a[tag=DebugMovement] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
tellraw @a[tag=DebugMovement] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]
tellraw @a[tag=DebugMovement] ["",{"text":"CALC -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Tmp"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Tmp2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Tmp3"}}]

scoreboard players operation @s Tmp4 = @s Tmp
scoreboard players operation @s Tmp4 /= 1000 Constant
scoreboard players operation @s Tmp %= 1000 Constant

scoreboard players operation @s Tmp5 = @s Tmp2
scoreboard players operation @s Tmp5 /= 1000 Constant
scoreboard players operation @s Tmp2 %= 1000 Constant

scoreboard players operation @s Tmp6 = @s Tmp3
scoreboard players operation @s Tmp6 /= 1000 Constant
scoreboard players operation @s Tmp3 %= 1000 Constant

function Gunivers-Lib:Entity/Set/MovementV2Loop