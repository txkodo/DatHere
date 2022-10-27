### Copyright © 2020 txkodo
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 指定されたエンティティのデータを、特定のオフセットで呼び出せるようにする

# シフト  (reset->1->     2->     3->     4->     5->     6->     7->     8)
# チェック(           2->     3->     4->     5->     6->     7->     8->  )

#define storage dat_here:

# reset
data remove storage dat_here: _[-4][-4][-4][-4][-4][-4][-4][6]
data remove storage dat_here: _[-4][-4][-4][-4][-4][-4][-4][5]
data remove storage dat_here: _[-4][-4][-4][-4][-4][-4][-4][4]
data remove storage dat_here: _[-4][-4][-4][-4][-4][-4][6]
data remove storage dat_here: _[-4][-4][-4][-4][-4][-4][5]
data remove storage dat_here: _[-4][-4][-4][-4][-4][-4][4]
data remove storage dat_here: _[-4][-4][-4][-4][-4][6]
data remove storage dat_here: _[-4][-4][-4][-4][-4][5]
data remove storage dat_here: _[-4][-4][-4][-4][-4][4]
data remove storage dat_here: _[-4][-4][-4][-4][6]
data remove storage dat_here: _[-4][-4][-4][-4][5]
data remove storage dat_here: _[-4][-4][-4][-4][4]
data remove storage dat_here: _[-4][-4][-4][6]
data remove storage dat_here: _[-4][-4][-4][5]
data remove storage dat_here: _[-4][-4][-4][4]
data remove storage dat_here: _[-4][-4][6]
data remove storage dat_here: _[-4][-4][5]
data remove storage dat_here: _[-4][-4][4]
data remove storage dat_here: _[-4][6]
data remove storage dat_here: _[-4][5]
data remove storage dat_here: _[-4][4]
data remove storage dat_here: _[6]
data remove storage dat_here: _[5]
data remove storage dat_here: _[4]

# ストレージシフト１
scoreboard players set _ DatHere 65536
scoreboard players operation _ DatHereID *= _ DatHere
# 01....
execute if score _ DatHereID matches 1073741824.. run data modify storage dat_here: _ append value []
# 10....
execute if score _ DatHereID matches ..-1073741825 run data modify storage dat_here: _ append from storage dat_here: two_empty_lists[]
# 11....
execute if score _ DatHereID matches -1073741824..-1 run data modify storage dat_here: _ append from storage dat_here: three_empty_lists[]

# ストレージチェック２
execute unless data storage dat_here: _[-4][0] run data modify storage dat_here: _[-4] set from storage dat_here: initial[0]
# ストレージシフト２
scoreboard players operation _ DatHereID += _ DatHereID
scoreboard players operation _ DatHereID += _ DatHereID
# 01....
execute if score _ DatHereID matches 1073741824.. run data modify storage dat_here: _[-4] append value []
# 10....
execute if score _ DatHereID matches ..-1073741825 run data modify storage dat_here: _[-4] append from storage dat_here: two_empty_lists[]
# 11....
execute if score _ DatHereID matches -1073741824..-1 run data modify storage dat_here: _[-4] append from storage dat_here: three_empty_lists[]

# ストレージチェック３
execute unless data storage dat_here: _[-4][-4][0] run data modify storage dat_here: _[-4][-4] set from storage dat_here: initial[0][0]
# ストレージシフト３
scoreboard players operation _ DatHereID += _ DatHereID
scoreboard players operation _ DatHereID += _ DatHereID
# 01....
execute if score _ DatHereID matches 1073741824.. run data modify storage dat_here: _[-4][-4] append value []
# 10....
execute if score _ DatHereID matches ..-1073741825 run data modify storage dat_here: _[-4][-4] append from storage dat_here: two_empty_lists[]
# 11....
execute if score _ DatHereID matches -1073741824..-1 run data modify storage dat_here: _[-4][-4] append from storage dat_here: three_empty_lists[]

# ストレージチェック４
execute unless data storage dat_here: _[-4][-4][-4][0] run data modify storage dat_here: _[-4][-4][-4] set from storage dat_here: initial[0][0][0]
# ストレージシフト４
scoreboard players operation _ DatHereID += _ DatHereID
scoreboard players operation _ DatHereID += _ DatHereID
# 01....
execute if score _ DatHereID matches 1073741824.. run data modify storage dat_here: _[-4][-4][-4] append value []
# 10....
execute if score _ DatHereID matches ..-1073741825 run data modify storage dat_here: _[-4][-4][-4] append from storage dat_here: two_empty_lists[]
# 11....
execute if score _ DatHereID matches -1073741824..-1 run data modify storage dat_here: _[-4][-4][-4] append from storage dat_here: three_empty_lists[]

# ストレージチェック５
execute unless data storage dat_here: _[-4][-4][-4][-4][0] run data modify storage dat_here: _[-4][-4][-4][-4] set from storage dat_here: initial[0][0][0][0]
# ストレージシフト５
scoreboard players operation _ DatHereID += _ DatHereID
scoreboard players operation _ DatHereID += _ DatHereID
# 01....
execute if score _ DatHereID matches 1073741824.. run data modify storage dat_here: _[-4][-4][-4][-4] append value []
# 10....
execute if score _ DatHereID matches ..-1073741825 run data modify storage dat_here: _[-4][-4][-4][-4] append from storage dat_here: two_empty_lists[]
# 11....
execute if score _ DatHereID matches -1073741824..-1 run data modify storage dat_here: _[-4][-4][-4][-4] append from storage dat_here: three_empty_lists[]

# ストレージチェック６
execute unless data storage dat_here: _[-4][-4][-4][-4][-4][0] run data modify storage dat_here: _[-4][-4][-4][-4][-4] set from storage dat_here: initial[0][0][0][0][0]
# ストレージシフト６
scoreboard players operation _ DatHereID += _ DatHereID
scoreboard players operation _ DatHereID += _ DatHereID
# 01....
execute if score _ DatHereID matches 1073741824.. run data modify storage dat_here: _[-4][-4][-4][-4][-4] append value []
# 10....
execute if score _ DatHereID matches ..-1073741825 run data modify storage dat_here: _[-4][-4][-4][-4][-4] append from storage dat_here: two_empty_lists[]
# 11....
execute if score _ DatHereID matches -1073741824..-1 run data modify storage dat_here: _[-4][-4][-4][-4][-4] append from storage dat_here: three_empty_lists[]

# ストレージチェック７
execute unless data storage dat_here: _[-4][-4][-4][-4][-4][-4][0] run data modify storage dat_here: _[-4][-4][-4][-4][-4][-4] set from storage dat_here: initial[0][0][0][0][0][0]
# ストレージシフト７
scoreboard players operation _ DatHereID += _ DatHereID
scoreboard players operation _ DatHereID += _ DatHereID
# 01....
execute if score _ DatHereID matches 1073741824.. run data modify storage dat_here: _[-4][-4][-4][-4][-4][-4] append value []
# 10....
execute if score _ DatHereID matches ..-1073741825 run data modify storage dat_here: _[-4][-4][-4][-4][-4][-4] append from storage dat_here: two_empty_lists[]
# 11....
execute if score _ DatHereID matches -1073741824..-1 run data modify storage dat_here: _[-4][-4][-4][-4][-4][-4] append from storage dat_here: three_empty_lists[]

# ストレージチェック８
execute unless data storage dat_here: _[-4][-4][-4][-4][-4][-4][-4][0] run data modify storage dat_here: _[-4][-4][-4][-4][-4][-4][-4] set from storage dat_here: initial[0][0][0][0][0][0][0]
# ストレージシフト８
scoreboard players operation _ DatHereID += _ DatHereID
scoreboard players operation _ DatHereID += _ DatHereID
# 01....
execute if score _ DatHereID matches 1073741824.. run data modify storage dat_here: _[-4][-4][-4][-4][-4][-4][-4] append value {}
# 10....
execute if score _ DatHereID matches ..-1073741825 run data modify storage dat_here: _[-4][-4][-4][-4][-4][-4][-4] append from storage dat_here: two_empty_maps[]
# 11....
execute if score _ DatHereID matches -1073741824..-1 run data modify storage dat_here: _[-4][-4][-4][-4][-4][-4][-4] append from storage dat_here: three_empty_maps[]
