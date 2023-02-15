# 防御力の取得 + ダメージ計算
 function vitque_player:status/calc/def
 function vitque_combat:damage/def_calc

# HP -= DMG
 #例外) tag=Invulnerable, team=!Enemy
 scoreboard players operation @s[tag=!Invulnerable,team=Enemy] HP -= @s DMG

 summon armor_stand ~ ~ ~ {Tags:[P_DMGtag,DMGtags],CustomName:'{"text": " "}',CustomNameVisible:true}


# スコアの消去
 scoreboard players reset @s P_DMG
 scoreboard players reset @s DMG