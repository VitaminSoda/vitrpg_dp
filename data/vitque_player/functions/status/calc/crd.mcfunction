# 初期化
 scoreboard players operation @s CRD = @s B_CRD

# helmet
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.CRD run execute store result score @s Temporary run data get entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.CRD
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.CRD run scoreboard players operation @s CRD += @s Temporary

# chest
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.CRD run execute store result score @s Temporary run data get entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.CRD
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.CRD run scoreboard players operation @s CRD += @s Temporary
  
# boots
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.CRD run execute store result score @s Temporary run data get entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.CRD
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.CRD run scoreboard players operation @s CRD += @s Temporary

# mainhand
 execute if data entity @s SelectedItem.tag.Vitque.Status.CRD run execute store result score @s Temporary run data get entity @s SelectedItem.tag.Vitque.Status.CRD
 execute if data entity @s SelectedItem.tag.Vitque.Status.CRD run scoreboard players operation @s CRD += @s Temporary
