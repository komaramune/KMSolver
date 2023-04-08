# 除算処理

# 左辺処理
execute unless data storage km_formula:_ formulas[-1].div[0].n run function km_formula:formula/operations/div/l

# 右辺処理
execute unless data storage km_formula:_ formulas[-1].div[1].n run function km_formula:formula/operations/div/r

# KMFloatOpで演算
data modify storage km_float_op: input.x set from storage km_formula:_ formulas[-1].div[0].n
data modify storage km_float_op: input.y set from storage km_formula:_ formulas[-1].div[1].n
function km_float_op:operations/private/div

# 計算結果でノードを上書き
data modify storage km_formula:_ formulas[-1] set value {n:0f}
data modify storage km_formula:_ formulas[-1].n set from storage km_float_op: output