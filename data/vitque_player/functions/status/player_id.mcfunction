# ﾀﾞﾐｰﾌﾟﾚｲﾔｰ $PlayerID の初期設定
execute unless score $PlayerID Const matches -2147483648..2147483647 run scoreboard players set $PlayerID Const -2147483648

# ﾀﾞﾐｰﾌﾟﾚｲﾔｰ $PlayerID を1加算して代入、タグを付与
 scoreboard players add $PlayerID Const 1
 scoreboard players operation @p[team=!Player] Const = $PlayerID Const
 team join Player @p[team=!Player,scores={Const=-2147483648..2147483647}]