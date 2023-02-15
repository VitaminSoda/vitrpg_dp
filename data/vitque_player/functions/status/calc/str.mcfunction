# 初期化
 scoreboard players operation @s STR = @s B_STR

# helmet
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.STR run execute store result score @s Temporary run data get entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.STR
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.STR run scoreboard players operation @s STR += @s Temporary

# chest
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.STR run execute store result score @s Temporary run data get entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.STR
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.STR run scoreboard players operation @s STR += @s Temporary
  
# boots
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.STR run execute store result score @s Temporary run data get entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.STR
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.STR run scoreboard players operation @s STR += @s Temporary

# mainhand
 execute if data entity @s SelectedItem.tag.Vitque.Status.STR run execute store result score @s Temporary run data get entity @s SelectedItem.tag.Vitque.Status.STR
 execute if data entity @s SelectedItem.tag.Vitque.Status.STR run scoreboard players operation @s STR += @s Temporary
