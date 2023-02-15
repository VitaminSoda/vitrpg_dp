# 攻撃宣言解除
 tag @s remove Attacking

# ItemIdの取得
 execute if data entity @s SelectedItem.tag.Vitque run execute store result score @s ItemId run data get entity @s SelectedItem.tag.CustomModelData

# 武器別にファンクション実行

 # 物理近距離
  execute as @s[scores={ItemId=100000..199999,UsedFungusStick=1..14,ATStick=..0},advancements={vitque_system:used_fungus_stick=false}] at @s run function vitque_item:weapon/melee/n_1_1
  
 # 遠距離武器

 # 魔法武器

# 長押し検知
 scoreboard players add @s[advancements={vitque_system:used_fungus_stick=true}] UsedFungusStick 1
 scoreboard players set @s[advancements={vitque_system:used_fungus_stick=false}] UsedFungusStick 0
 advancement revoke @s only vitque_system:used_fungus_stick

# 弓つかった音消す
 stopsound @a player entity.arrow.shoot

# クールダウンはどうかな
 execute as @s[scores={ATStick=1..}] run function vitque_combat:weapon/cool_down
