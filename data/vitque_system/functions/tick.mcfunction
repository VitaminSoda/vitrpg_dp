
 execute as @e[team=Enemy] run function vitque_enemy:tick

 execute if entity @a[team=Player] run function vitque_player:status/player_id

 execute as @a run function vitque_player:tick

 execute as @e[tag=Pjtl] run function vitque_combat:pjtl_tick

 execute as @a run function vitque_combat:weapon/tick

 execute as @e[type=armor_stand,tag=DMGtags] at @s run function vitque_combat:damage/dmg_tag

 function vitque_system:other
