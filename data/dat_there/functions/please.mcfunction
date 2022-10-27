### Copyright © 2020 txkodo
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 指定された値(_ DatHereID)の個別ストレージを提供(特定のオフセットで呼び出せるように)する

# IDを一時変数にコピー
execute store result storage dat_here: target_id int 1 store result score $ID DatHere run scoreboard players get _ DatHereID
# 取得するIDに変化があるかどうか確認
execute store result storage dat_here: update byte 1 run data modify storage dat_here: last_id set from storage dat_here: target_id
# ストレージ提供
execute if data storage dat_here: {update:true} run function dat_here:sys/provide
