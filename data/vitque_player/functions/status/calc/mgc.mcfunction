# 初期化
 scoreboard players operation @s MGC = @s B_MGC

# helmet
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.MGC run execute store result score @s Temporary run data get entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.MGC
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.MGC run scoreboard players operation @s MGC += @s Temporary

# chest
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.MGC run execute store result score @s Temporary run data get entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.MGC
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.MGC run scoreboard players operation @s MGC += @s Temporary
  
# boots
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.MGC run execute store result score @s Temporary run data get entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.MGC
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.MGC run scoreboard players operation @s MGC += @s Temporary

# mainhand
 execute if data entity @s SelectedItem.tag.Vitque.Status.MGC run execute store result score @s Temporary run data get entity @s SelectedItem.tag.Vitque.Status.MGC
 execute if data entity @s SelectedItem.tag.Vitque.Status.MGC run scoreboard players operation @s MGC += @s Temporary
