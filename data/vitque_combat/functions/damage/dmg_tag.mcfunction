# タイマー
 scoreboard players add @s AItick 1
 kill @s[scores={AItick=15..}]

# データの代入等
 item modify entity @s[scores={AItick=..1}] armor.head vitque_system:pdmg_tag
 data modify entity @s[scores={AItick=..1}] CustomName set from entity @s ArmorItems[3].tag.display.Name
 item replace entity @s armor.head with command_block_minecart

# ポップアップ
 tp @s[scores={AItick=..3}] ~ ~0.2 ~
 tp @s[scores={AItick=4..6}] ~ ~0.1 ~
 tp @s[scores={AItick=7..9}] ~ ~-0.07 ~