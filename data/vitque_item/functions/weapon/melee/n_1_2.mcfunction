# プレイヤーからの情報の転写
 scoreboard players operation @s STR = $.STR Temporary
 scoreboard players operation @s MGC = $.MGC Temporary
 scoreboard players operation @s RCH = $.RCH Temporary
 scoreboard players operation @s ItemId = $.ItemId Temporary
 scoreboard players operation @s MotionX = $.MotionX Temporary
 scoreboard players operation @s MotionZ = $.MotionZ Temporary
 scoreboard players remove @s ItemId 100000000
 data modify entity @s Pose.Head[0] set from storage vitque:temporary Rotation[1]
 data modify entity @s Pose.Head[1] set from storage vitque:temporary Rotation[0]

# identify
 tag @s remove Pjtl.Undefined
 tag @s add PjtlM.n_1_1
