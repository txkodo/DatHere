### Copyright © 2020 txkodo
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### このデータパックに必要なものを初期化する

# ストレージシフトに使うデータ
data modify storage dat_here: two_empty_lists set value [[],[]]
data modify storage dat_here: three_empty_lists set value [[],[],[]]
data modify storage dat_here: two_empty_maps set value [{},{}]
data modify storage dat_here: three_empty_maps set value [{},{},{}]
data modify storage dat_here: initial set value [[[[[[[[{},{},{},{}],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]]
# メインになるストレージ
data modify storage dat_here: _ set from storage dat_here: initial
# 割り当て済みID保存ストレージ
data modify storage dat_here: id set value [0]
# IDを振るためのスコアボード
scoreboard objectives add DatHereID dummy
# 計算に使うスコアボード
scoreboard objectives add DatHere dummy
