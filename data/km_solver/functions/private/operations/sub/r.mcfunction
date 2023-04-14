# 減算の左辺

# 新しいノードを追加
data modify storage km_solver:_ formulas append from storage km_solver:_ formulas[-1].sub[1]

# 演算
execute unless data storage km_solver:_ formulas[-1].v run function #km_solver:op_select
execute if data storage km_solver:_ formulas[-1].v run function km_solver:private/var_get

# 呼ぼ出し元のノードを上書き
data modify storage km_solver:_ formulas[-2].sub[1] set from storage km_solver:_ formulas[-1]

# 最新のノードを削除
data remove storage km_solver:_ formulas[-1]