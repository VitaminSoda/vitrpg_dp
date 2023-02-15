# プレイヤーデータの表示
 execute unless data entity @s Inventory[{Slot:100b}] run function vitque_player:status/status_indicate

# ヘルメット
 execute unless entity @s[nbt={Inventory:[{Slot:103b,Count:1b,id:"minecraft:arrow"}]}] run item replace entity @s[scores={ATStick=..0}] armor.head with arrow
 item replace entity @s[scores={ATStick=1..},nbt={Inventory:[{Slot:103b,Count:1b,id:"minecraft:arrow"}]}] armor.head with stone
 item modify entity @s armor.head vitque_system:helmet

# ブーツ、レギンス
 execute unless data entity @s Inventory[{Slot:101b}] run item replace entity @s armor.legs with leather_leggings{display:{color:0},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1556421620,-2133767231,-1123914830,-1081328351],Slot:"legs"}],Unbreakable:1b,HideFlags:70,GhostItem:1}
 item modify entity @s armor.legs vitque_system:boots
 
 execute unless predicate vitque_system:wear_leggings/leather_boots run item replace entity @s[predicate=vitque_system:wear_leggings/leather] armor.feet with leather_boots{display:{color:0,Name:'{"translate":"Player Data","color":"white","italic":false}',Lore:['{"text":"Click to show your statuses.","color":"gray","italic":false}']},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1556421620,-2133767231,-1123914830,-1081328351],Slot:"feet"}],Unbreakable:1b,HideFlags:66}
 execute unless data entity @s Inventory[{Slot:100b}] run item replace entity @s armor.feet with leather_boots{display:{color:0,Name:'{"translate":"Player Data","color":"white","italic":false}',Lore:['{"text":"Click to show your statuses.","color":"gray","italic":false}']},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1556421620,-2133767231,-1123914830,-1081328351],Slot:"feet"}],Unbreakable:1b,HideFlags:70,GhostItem:1}
 item modify entity @s armor.feet vitque_system:boots