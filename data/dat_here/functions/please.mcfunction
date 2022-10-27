### Copyright © 2020 txkodo
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 実行座標の個別ストレージを提供(特定のオフセットで呼び出せるように)する

# markerがなければ召喚しIDを割り当てる
execute align xyz unless entity @e[type=marker,tag=DatHere,dx=1,dy=1,dz=1] positioned ~0.5 ~0.5 ~0.5 run function dat_here:sys/allocate
# IDを一時変数にコピー
execute align xyz store result storage dat_here: target_id int 1 store result score $ID DatHere run scoreboard players operation _ DatHereID = @e[type=marker,tag=DatHere,dx=1,dy=1,dz=1,limit=1] DatHereID
# 取得するIDに変化があるかどうか確認
execute store result storage dat_here: update byte 1 run data modify storage dat_here: last_id set from storage dat_here: target_id
# ストレージ提供
execute if data storage dat_here: {update:true} run function dat_here:sys/provide
