

# 位置の取得
 execute store result score @s MotionX run data get entity @s Pos[0] 50
 execute store result score @s MotionZ run data get entity @s Pos[2] 50

 # 代入
  data modify entity @s Motion[1] set value 0.3
  execute store result entity @s Motion[0] double 0.003 run scoreboard players operation @s MotionX -= $.MotionX Temporary
  execute store result entity @s Motion[2] double 0.003 run scoreboard players operation @s MotionZ -= $.MotionZ Temporary