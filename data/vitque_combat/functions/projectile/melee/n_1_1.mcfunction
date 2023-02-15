# 攻撃アニメーション
 scoreboard players add @s[scores={ItemId=..2000000000}] ItemId 100000000
 execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s ItemId

# スコアの準備
 scoreboard players operation $.STR Temporary = @s STR
 scoreboard players operation $.MGC Temporary = @s MAG
 scoreboard players operation $.MotionX Temporary = @s MotionX
 scoreboard players operation $.MotionZ Temporary = @s MotionZ

# ダメージ判定は最初の1tickのみ
 execute as @s[scores={ItemId=..100000000}] at @s as @e[distance=..1.75,team=Enemy] at @s run function vitque_combat:damage/enemy/dmg

# パーティクル + 音
 execute at @s run particle crit ~ ~1.75 ~ 0.3 0.07 0.3 0.02 3
 execute at @s[scores={ItemId=..100000000}] run playsound entity.player.attack.sweep master @a ~ ~1.75 ~

 kill @s[scores={ItemId=300000000..}]