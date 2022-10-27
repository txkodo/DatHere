### Copyright © 2020 txkodo
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 個別ストレージを放棄

# データを削除
execute if score @s DatHereID matches 1.. run function dat_here:please
execute if score @s DatHereID matches 1.. run data modify storage dat_here: _[-4][-4][-4][-4][-4][-4][-4][-4] set value {}
# IDを削除
scoreboard players reset @s DatHereID
# Kill
kill @s