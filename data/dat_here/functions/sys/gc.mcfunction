### Copyright © 2020 txkodo
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.
### Copyright © 2020 txkodo
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ガベージコレクタ

# 前回存在を確認したIDを移動させる
data modify storage dat_here: id append from storage dat_here: id[0]
data remove storage dat_here: id[0]

# 割り当て済みID[0]以下の最大値を取得(_ IDに入る)
execute store result score _ DatHere run data get storage dat_here: id[0]
scoreboard players remove _ DatHere 2147483647
scoreboard players set _ DatHereID 0
scoreboard players operation * DatHereID -= _ DatHere
scoreboard players operation _ DatHereID > * DatHereID
scoreboard players operation * DatHereID += _ DatHere

# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
scoreboard players operation _ DatHere >< _ DatHereID
execute store result score _ DatHereID run data get storage dat_here: id[0]
execute if score _ DatHereID > _ DatHere run function dat_here:sys/gc_loop
scoreboard players operation _ DatHere >< _ DatHereID

# loop while x - next >= 2(prev - x) - 1 (⇔ 3x - 2prev - next + 1 >= 0)
# 2prev
execute store result score _ DatHere run data get storage dat_here: id[-1]
execute if score _ DatHere matches 0 run scoreboard players add _ DatHere 65536
execute if score _ DatHereID matches 0 run scoreboard players add _ DatHere 65536
execute if score _ DatHereID matches 0 run scoreboard players add _ DatHereID 65536
scoreboard players operation _ DatHere += _ DatHere
# 2prev - 2x
scoreboard players operation _ DatHere -= _ DatHereID
scoreboard players operation _ DatHere -= _ DatHereID
# 3x - 2prev
scoreboard players operation _ DatHereID -= _ DatHere
# 3x - 2prev - next
execute store result score _ DatHere run data get storage dat_here: id[1]
scoreboard players operation _ DatHereID -= _ DatHere
execute if score _ DatHereID matches -1.. run function dat_here:sys/gc
