# 初期化
 scoreboard players operation @s CRT = @s B_CRT

# helmet
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.CRT run execute store result score @s Temporary run data get entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.CRT
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.CRT run scoreboard players operation @s CRT += @s Temporary

# chest
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.CRT run execute store result score @s Temporary run data get entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.CRT
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.CRT run scoreboard players operation @s CRT += @s Temporary
  
# boots
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.CRT run execute store result score @s Temporary run data get entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.CRT
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.CRT run scoreboard players operation @s CRT += @s Temporary

# mainhand
 execute if data entity @s SelectedItem.tag.Vitque.Status.CRT run execute store result score @s Temporary run data get entity @s SelectedItem.tag.Vitque.Status.CRT
 execute if data entity @s SelectedItem.tag.Vitque.Status.CRT run scoreboard players operation @s CRT += @s Temporary
