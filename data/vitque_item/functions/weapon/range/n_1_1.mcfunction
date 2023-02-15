# 攻撃中です
 tag @s add Attacking

# スコア持ってくる
 function vitque_player:status/calc/ats
 execute store result score @s RCH run data get entity @s SelectedItem.tag.Vitque.Status.RCH
 function vitque_player:status/calc/str
 function vitque_player:status/calc/mgc
 function vitque_player:status/calc/rng_1

# 使う値を一時保存
 scoreboard players operation $.STR Temporary = @s STR
 scoreboard players operation $.MGC Temporary = @s MGC
 scoreboard players operation $.ItemId Temporary = @s ItemId
 execute store result score $.MotionX Temporary run data get entity @s Pos[0] 50
 execute store result score $.MotionZ Temporary run data get entity @s Pos[2] 50
 data modify storage vitque:temporary Rotation set from entity @s Rotation

# 攻撃の当たり判定の召喚 → スコア等の代入
 execute anchored eyes run summon armor_stand ^ ^ ^0.5 {Team:"Player",NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["Pjtl","Pjtl.Undefined"],Pose:{Head:[1f,1f,1f]},ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,CustomModelData:1}}]}
 execute as @e[type=armor_stand,tag=Pjtl.Undefined,team=Player,limit=1,sort=nearest] run function vitque_item:weapon/melee/n_1_2

# クールダウン処理
 scoreboard players operation @s ATStick = @s ATS
 attribute @s[scores={ATS=1..}] generic.attack_speed modifier add 42154391-be1b-4d60-883b-1822fc240e96 "cool_down" -1 multiply_base
