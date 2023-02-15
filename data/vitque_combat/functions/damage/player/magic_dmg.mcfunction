# 防御力の取得 + ダメージ計算
 function vitque_player:status/calc/mdf
 function vitque_combat:damage/mdf_calc

# 体力 -= ダメージ
 scoreboard players operation @s HP -= @s M_DMG