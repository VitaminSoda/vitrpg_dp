tag @s add Crit

# CRD + 150 = クリティカル時の倍率(%)
 scoreboard players add @s CRD 150

# STR, DEX, MAG, FRCにそれぞれクリティカル倍率をかけて100で割る
 # ○○○ * CRD
  scoreboard players operation @s STR *= @s CRD
  scoreboard players operation @s MAG *= @s CRD

 # ○○○ / 100
  scoreboard players operation @s STR /= $_100 Const
  scoreboard players operation @s MAG /= $_100 Const
    