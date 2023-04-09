# 加算処理

# 左辺処理
execute unless data storage km_solver:_ formulas[-1].add[0].n run function km_solver:private/operations/add/l

# 右辺処理
execute unless data storage km_solver:_ formulas[-1].add[1].n run function km_solver:private/operations/add/r

# KMFloatOpで演算
data modify storage km_float_op: input.x set from storage km_solver:_ formulas[-1].add[0].n
data modify storage km_float_op: input.y set from storage km_solver:_ formulas[-1].add[1].n
function km_float_op:operations/private/add

# 計算結果でノードを上書き
data modify storage km_solver:_ formulas[-1] set value {n:0f}
data modify storage km_solver:_ formulas[-1].n set from storage km_float_op: output