# 初期化
 scoreboard players operation @s DEF = @s B_DEF

# helmet
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.DEF run execute store result score @s Temporary run data get entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.DEF
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.DEF run scoreboard players operation @s DEF += @s Temporary

# chest
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.DEF run execute store result score @s Temporary run data get entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.DEF
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.DEF run scoreboard players operation @s DEF += @s Temporary
  
# boots
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.DEF run execute store result score @s Temporary run data get entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.DEF
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.DEF run scoreboard players operation @s DEF += @s Temporary

# mainhand
 execute if data entity @s SelectedItem.tag.Vitque.Status.DEF run execute store result score @s Temporary run data get entity @s SelectedItem.tag.Vitque.Status.DEF
 execute if data entity @s SelectedItem.tag.Vitque.Status.DEF run scoreboard players operation @s DEF += @s Temporary
