# 初期化
 scoreboard players set @s ATS 0

# helmet
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.ATS run execute store result score @s Temporary run data get entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.ATS
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.ATS run scoreboard players operation @s ATS += @s Temporary

# chest
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.ATS run execute store result score @s Temporary run data get entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.ATS
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.ATS run scoreboard players operation @s ATS += @s Temporary
  
# boots
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.ATS run execute store result score @s Temporary run data get entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.ATS
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.ATS run scoreboard players operation @s ATS += @s Temporary

# mainhand
 execute if data entity @s SelectedItem.tag.Vitque.Status.ATS run execute store result score @s Temporary run data get entity @s SelectedItem.tag.Vitque.Status.ATS
 execute if data entity @s SelectedItem.tag.Vitque.Status.ATS run scoreboard players operation @s ATS += @s Temporary
