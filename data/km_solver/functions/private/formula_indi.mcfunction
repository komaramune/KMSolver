# 数式ごとに処理

data modify storage km_solver:_ formulas append from storage km_solver:_ inputs[-1].f

# 計算開始
function #km_solver:op_select

# 出力
data modify storage km_solver: outputs append from storage km_solver:_ formulas[0].n

# 変数代入
execute if data storage km_solver:_ inputs[-1].v run function km_solver:private/var_set

# 後片付け
data remove storage km_solver:_ formulas

# 再帰
data remove storage km_solver:_ inputs[-1]
execute if data storage km_solver:_ inputs[0] run function km_solver:private/formula_indi