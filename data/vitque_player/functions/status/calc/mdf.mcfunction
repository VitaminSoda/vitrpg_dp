# 初期化
 scoreboard players operation @s MDF = @s B_MDF

# helmet
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.MDF run execute store result score @s Temporary run data get entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.MDF
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.MDF run scoreboard players operation @s MDF += @s Temporary

# chest
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.MDF run execute store result score @s Temporary run data get entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.MDF
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.MDF run scoreboard players operation @s MDF += @s Temporary
  
# boots
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.MDF run execute store result score @s Temporary run data get entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.MDF
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.MDF run scoreboard players operation @s MDF += @s Temporary

# mainhand
 execute if data entity @s SelectedItem.tag.Vitque.Status.MDF run execute store result score @s Temporary run data get entity @s SelectedItem.tag.Vitque.Status.MDF
 execute if data entity @s SelectedItem.tag.Vitque.Status.MDF run scoreboard players operation @s MDF += @s Temporary
