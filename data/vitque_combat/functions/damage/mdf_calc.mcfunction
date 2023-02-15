
 scoreboard players operation @s DMG = @s M_DMG
 scoreboard players operation @s DEF2 = @s MDF

#=======================
# f(DMG) = DMG - 4x / d 
#=======================

 scoreboard players operation @s DEF2 *= $4 Const
 scoreboard players operation @s DEF2 /= @s DMG
 scoreboard players operation @s DMG -= @s DEF2
 scoreboard players operation @s DMG > $1 Const

# HP -= DMG
 #例外) tag=Invulnerable, team=!Enemy
 scoreboard players operation @s[tag=!Invulnerable,team=Enemy] HP -= @s DMG

# スコアの消去
 scoreboard players reset @s M_DMG
 scoreboard players reset @s DMG