
 scoreboard players operation @s DMG = @s P_DMG
 scoreboard players operation @s DEF2 = @s DEF

#=======================
# f(DMG) = DMG - 4x / d 
#=======================

 scoreboard players operation @s DEF2 *= $4 Const
 scoreboard players operation @s DEF2 /= @s DMG
 scoreboard players operation @s DMG -= @s DEF2
 scoreboard players operation @s DMG > $1 Const
