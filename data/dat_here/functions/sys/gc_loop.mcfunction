### Copyright © 2020 txkodo
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 割り当て解放

# データを削除
function dat_here:sys/provide
data modify storage dat_here: _[-4][-4][-4][-4][-4][-4][-4][-4] set value {}
# 割り当て済みIDを削除
data remove storage dat_here: id[0]
# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
execute store result score _ DatHereID run data get storage dat_here: id[0]
execute if score _ DatHereID > _ DatHere run function dat_here:sys/gc_loop
