# 数式計算処理の起点

# 入力
data modify storage km_solver:_ formulas append from storage km_solver: input

# KMFloatOp用制御エンティティ召喚
execute if loaded ~ ~ ~ run summon text_display ~ ~ ~ {UUID:[I;1338,0,0,0]}

# 計算開始
function #km_solver:op_select

# KMFloatOp用制御エンティティ削除
kill 53a-0-0-0-0

# 出力
data modify storage km_solver: output set from storage km_solver:_ formulas[0].n

# 後片付け
data remove storage km_solver:_ formulas