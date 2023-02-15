# 初期化
 scoreboard players operation @s MHP = @s B_MHP

# helmet
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.MHP run execute store result score @s Temporary run data get entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.MHP
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.MHP run scoreboard players operation @s MHP += @s Temporary

# chest
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.MHP run execute store result score @s Temporary run data get entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.MHP
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.MHP run scoreboard players operation @s MHP += @s Temporary
  
# boots
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.MHP run execute store result score @s Temporary run data get entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.MHP
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.MHP run scoreboard players operation @s MHP += @s Temporary

# mainhand
 execute if data entity @s SelectedItem.tag.Vitque.Status.MHP run execute store result score @s Temporary run data get entity @s SelectedItem.tag.Vitque.Status.MHP
 execute if data entity @s SelectedItem.tag.Vitque.Status.MHP run scoreboard players operation @s MHP += @s Temporary
