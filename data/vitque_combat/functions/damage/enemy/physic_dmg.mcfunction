# 防御力の取得 + ダメージ計算
 function vitque_combat:damage/def_calc

# HP -= DMG
 #例外) tag=Invulnerable, team=!Enemy
 scoreboard players operation @s[tag=!Invulnerable,team=Enemy] HP -= @s DMG

# ダメージ演出
 # ダメージ表示
  execute positioned ~ ~1.5 ~ run summon armor_stand ~ ~ ~ {Invisible:true,Tags:[P_DMGtag],CustomName:'{"text": "0"}',Marker:1b,CustomNameVisible:true,ArmorItems:[{},{},{},{id:"minecraft:command_block_minecart",Count:1b}]}
  execute positioned ~ ~1.5 ~ run scoreboard players operation @e[type=armor_stand,limit=1,distance=..5,sort=nearest,tag=!P_DMGtags] DMG = @s DMG
  execute positioned ~ ~1.5 ~ run tag @e[type=armor_stand,distance=..5,limit=1,sort=nearest,tag=!DMGtags] add DMGtags

# スコアの消去
 scoreboard players reset @s P_DMG
 scoreboard players reset @s DMG
 tag @s remove DMGed1