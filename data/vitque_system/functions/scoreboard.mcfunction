# 一般
 scoreboard objectives add Temporary dummy
 scoreboard objectives add Const dummy
 function vitaque_system:general/constant
 scoreboard objectives add UsedFungusStick used:warped_fungus_on_a_stick

# 基礎ステータス
 # 基礎力
  scoreboard objectives add B_MHP dummy {"translate":"MHP","color":"red"}
  scoreboard objectives add B_MMP dummy {"translate":"MMP","color":"light_purple"}
 # 物理
  scoreboard objectives add B_STR dummy {"translate":"STR","color":"gold"}
  scoreboard objectives add B_DEF dummy {"translate":"DEF","color":"dark_green"}
 # 魔法
  scoreboard objectives add B_MGC dummy {"translate":"MGC","color":"dark_purple"}
  scoreboard objectives add B_MDF dummy {"translate":"MDF","color":"dark_aqua"}
 # ボーナス
  scoreboard objectives add B_CRT dummy {"translate":"CRT","color":"aqua"}
  scoreboard objectives add B_CRD dummy {"translate":"CRD","color":"aqua"}

# ステータス
 # 基礎力
  scoreboard objectives add MHP dummy {"translate":"MHP","color":"red"}
  scoreboard objectives add MMP dummy {"translate":"MMP","color":"light_purple"}
  scoreboard objectives add HP dummy {"translate":"HP","color":"red"}
 # 物理
  scoreboard objectives add STR dummy {"translate":"STR","color":"gold"}
  scoreboard objectives add DEF dummy {"translate":"DEF","color":"dark_green"}
 # 魔法
  scoreboard objectives add MGC dummy {"translate":"MGC","color":"dark_purple"}
  scoreboard objectives add MDF dummy {"translate":"MDF","color":"dark_aqua"}
 # ボーナス
  scoreboard objectives add CRT dummy {"translate":"CRT","color":"aqua"}
  scoreboard objectives add CRD dummy {"translate":"CRD","color":"aqua"}
  scoreboard objectives add RDM dummy {"translate":"RDM","color":"green"}
 # その他
  scoreboard objectives add ATS dummy {"translate":"ATS"}
  scoreboard objectives add RCH dummy {"translate":"RCH"}
  scoreboard objectives add ItemId dummy
 # 補助
  scoreboard objectives add RCH2 dummy
  scoreboard objectives add DMG dummy
  scoreboard objectives add P_DMG custom:damage_resisted
  scoreboard objectives add B_DMG dummy
  scoreboard objectives add M_DMG dummy
  scoreboard objectives add DEF2 dummy

# ベクトル用、落下関係
 scoreboard objectives add MotionX dummy
 scoreboard objectives add MotionY dummy
 scoreboard objectives add MotionZ dummy

 scoreboard objectives add FallingTick dummy
 scoreboard objectives add FallResist dummy

# tick系
 scoreboard objectives add REGENtick dummy
 scoreboard objectives add ATStick dummy
 scoreboard objectives add AItick dummy

# RNG
 scoreboard objectives add RNG dummy
 scoreboard objectives add RNG2 dummy