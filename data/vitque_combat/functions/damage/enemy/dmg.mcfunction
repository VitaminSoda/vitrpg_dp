
# ダメージの代入
 scoreboard players operation @s P_DMG = $.STR Temporary
 scoreboard players operation @s P_MGC = $.MGC Temporary
 tag @s[scores={P_DMG=1..}] add DMGed1
 tag @s[scores={M_DMG=1..}] add DMGed2

# 物理ダメージ
 execute as @s[tag=DMGed1,tag=!DMGed2] run function vitque_combat:damage/enemy/physic_dmg

# 魔法ダメージ
 execute as @s[tag=!DMGed1,tag=DMGed2] run function vitque_combat:damage/enemy/physic_dmg

# ノックバック
 effect give @s wither 1 1 true
 function vitque_combat:damage/enemy/kb/calc

# HP = ..0
 kill @s[scores={HP=..0},tag=!EnmBoss]

# 音
 execute as @s[scores={HP=1..}] run function vitque_combat:damage/enemy/hurt_sound
 execute as @s[scores={HP=..0}] run function vitque_combat:damage/enemy/death_sound