### Copyright © 2020 txkodo
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### IDを新規割り当て

# ごみ掃除(抜けるとid[0]とid[-1]が丁度良いスペースになる)
function dat_here:sys/gc

# id[0] + id[-1] / 2 を割り当てIDに取る
execute store result score _ DatHereID run data get storage dat_here: id[-1]
execute store result score _ DatHere run data get storage dat_here: id[0]
execute if score _ DatHereID matches 0 run scoreboard players set _ DatHereID 65536
scoreboard players operation _ DatHereID += _ DatHere
scoreboard players set _ DatHere 2
scoreboard players operation _ DatHereID /= _ DatHere

# 割り当てIDに追加
data modify storage dat_here: id append value -1
execute store result storage dat_here: id[-1] int 1 run scoreboard players get _ DatHereID

# marker召喚
summon marker ~ ~ ~ {Tags:[DatHere]}

# 割り当てる
scoreboard players operation @e[type=marker,tag=DatHere,distance=0] DatHereID = _ DatHereID
