# クリティカル関連のデータを取得
 function vitque_player:status/calc/crt
 function vitque_player:status/calc/crd
 function vitque_player:status/calc/rdm

# クリティカルチャンス
 # AECを召喚
  summon minecraft:area_effect_cloud ~ ~ ~ {Age:1,Duration:-1,WaitTime:1,Tags:["RNGaec"]}
 # RNG → ｸﾘﾃｨｶﾙﾁｬﾝｽ、RNG2 → ﾀﾞﾒｰｼﾞ振れ幅(の予定)
  execute store result score @s RNG run data get entity @e[type=area_effect_cloud,tag=RNGaec,limit=1,sort=nearest] UUID[0]
  execute store result score @s RNG2 run data get entity @e[type=area_effect_cloud,tag=RNGaec,limit=1,sort=nearest] UUID[1]
  scoreboard players operation @s RNG %= $_100 Const
  scoreboard players operation @s RNG2 %= @s RDM

# RDM + 100 = クリティカル時の倍率(%)
 scoreboard players add @s RDM 100
# STR, DEX, MAG, FRCにそれぞれRDMをかけて100で割る
 # ○○○ * RDM
  scoreboard players operation @s STR *= @s RDM
  scoreboard players operation @s MAG *= @s RDM
 # ○○○ / 100
  scoreboard players operation @s STR /= $_100 Const
  scoreboard players operation @s MAG /= $_100 Const

# CRC >= RNG ならクリティカルヒット
 execute if score @s CRC >= @s RNG run function vitque_player:status/calc/rng_2
