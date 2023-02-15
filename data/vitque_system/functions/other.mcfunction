# 耐性
 effect give @e[team=Enemy] resistance 1 4 true
 effect give @a resistance 1 4 true

# /kill 群
 kill @e[tag=MotionMarker,type=marker]
 kill @e[type=item,nbt={Item:{tag:{CustomModelData:1}}}]

 kill @e[type=arrow,nbt={pickup:1b}]
 kill @e[type=arrow,nbt={pickup:2b}]