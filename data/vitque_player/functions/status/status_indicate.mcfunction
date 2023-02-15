# 各値の取得
 function vitque_player:status/calc/mhp
 function vitque_player:status/calc/str
 function vitque_player:status/calc/def
 function vitque_player:status/calc/mgc
 function vitque_player:status/calc/mdf
 function vitque_player:status/calc/crt
 function vitque_player:status/calc/crd

# ストレージ
 execute store result storage vitque:temporary player.status.MHP int 1 run scoreboard players get @s MHP
 execute store result storage vitque:temporary player.status.MMP int 1 run scoreboard players get @s MMP
 execute store result storage vitque:temporary player.status.STR int 1 run scoreboard players get @s STR
 execute store result storage vitque:temporary player.status.DEF int 1 run scoreboard players get @s DEF
 execute store result storage vitque:temporary player.status.MGC int 1 run scoreboard players get @s MGC
 execute store result storage vitque:temporary player.status.MDF int 1 run scoreboard players get @s MDF
 execute store result storage vitque:temporary player.status.CRT int 1 run scoreboard players get @s CRT
 execute store result storage vitque:temporary player.status.CRD int 1 run scoreboard players get @s CRD

# 表示
 tellraw @s {"text":"Your Status>================"}
 tellraw @s [{"text":""},{"translate":"MHP","color":"red"},{"text":": "},{"nbt":"player.status.MHP","storage":"vitque:temporary"},{"text":"     "},{"translate":"MMP","color":"light_purple"},{"text":": "},{"nbt":"player.status.MMP","storage":"vitque:temporary"},{"text":"     "}]
 tellraw @s [{"text":""},{"translate":"STR","color":"gold"},{"text":": "},{"nbt":"player.status.STR","storage":"vitque:temporary"},{"text":"     "},{"translate":"DEF","color":"dark_green"},{"text":": "},{"nbt":"player.status.DEF","storage":"vitque:temporary"},{"text":"     "}]
 tellraw @s [{"text":""},{"translate":"MGC","color":"dark_purple"},{"text":": "},{"nbt":"player.status.MGC","storage":"vitque:temporary"},{"text":"     "},{"translate":"RST","color":"dark_aqua"},{"text":": "},{"nbt":"player.status.MDF","storage":"vitque:temporary"},{"text":"     "}]
 tellraw @s [{"text":""},{"translate":"CRC","color":"aqua"},{"text":": "},{"nbt":"player.status.CRT","storage":"vitque:temporary"},{"text":"     "},{"translate":"CRD","color":"aqua"},{"text":": "},{"nbt":"player.status.CRD","storage":"vitque:temporary"},{"text":"     "}]
 tellraw @s {"text":" =========================="}

# 音
 playsound item.book.page_turn player @s 0 -1024 0 0 1 1

 clear @s leather_boots{GhostItem:1}