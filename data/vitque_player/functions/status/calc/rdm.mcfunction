# 初期化
 scoreboard players set @s RDM 0

# helmet
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.RDM run execute store result score @s Temporary run data get entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.RDM
 execute if data entity @s Inventory[{Slot:103b}].tag.Vitque.Status.Armor.RDM run scoreboard players operation @s RDM += @s Temporary

# chest
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.RDM run execute store result score @s Temporary run data get entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.RDM
 execute if data entity @s Inventory[{Slot:102b}].tag.Vitque.Status.Armor.RDM run scoreboard players operation @s RDM += @s Temporary
  
# boots
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.RDM run execute store result score @s Temporary run data get entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.RDM
 execute if data entity @s Inventory[{Slot:101b}].tag.Vitque.Status.Armor.RDM run scoreboard players operation @s RDM += @s Temporary

# mainhand
 execute if data entity @s SelectedItem.tag.Vitque.Status.RDM run execute store result score @s Temporary run data get entity @s SelectedItem.tag.Vitque.Status.RDM
 execute if data entity @s SelectedItem.tag.Vitque.Status.RDM run scoreboard players operation @s RDM += @s Temporary
