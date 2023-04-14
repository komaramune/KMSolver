# 数式計算処理の起点

data modify storage km_solver:_ outputs set from storage km_solver: inputs
data remove storage km_solver: outputs

# 入力順番反転
execute if data storage km_solver: inputs[0] run function km_solver:private/list_reverse

# KMFloatOp用制御エンティティ召喚
execute if loaded ~ ~ ~ run summon item_display ~ ~ ~ {UUID:[I;1338,65536,0,0]}

# 制御エンティティ確認
execute unless data storage km_solver:_ {disable_error_messages:1b} unless entity 53a-1-0-0-0 run tellraw @a {"text":"KMSolver エラー:制御用エンティティが見つかりません。\n読み込まれている座標で呼び出しているかなどを確認してください。"}

# 数式ごとに処理
execute if data storage km_solver: inputs[0] as 53a-1-0-0-0 run function km_solver:private/formula_indi

# KMFloatOp用制御エンティティ削除
kill 53a-0-0-0-0