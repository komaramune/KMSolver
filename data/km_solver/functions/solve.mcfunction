# 数式計算処理の起点

# 入力
data modify storage km_solver:_ formulas append from storage km_solver: input

# KMFloatOp用制御エンティティ召喚
execute if loaded ~ ~ ~ run summon text_display ~ ~ ~ {UUID:[I;1338,65536,0,0]}

# 制御エンティティ確認
execute unless data storage km_solver:_ {disable_error_messages:1b} unless entity 53a-1-0-0-0 run tellraw @a {"text":"KMSolver エラー:制御用エンティティが見つかりません。\n読み込まれている座標で呼び出しているかなどを確認してください。"}

# 計算開始
execute as 53a-1-0-0-0 run function #km_solver:op_select

# 出力
execute if entity 53a-1-0-0-0 run data modify storage km_solver: output set from storage km_solver:_ formulas[0].n

# 後片付け
execute if entity 53a-1-0-0-0 run data remove storage km_solver:_ formulas

# KMFloatOp用制御エンティティ削除
kill 53a-0-0-0-0