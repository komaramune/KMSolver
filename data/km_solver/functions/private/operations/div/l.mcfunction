# 除算の左辺

# 新しいノードを追加
data modify storage km_formula:_ formulas append from storage km_formula:_ formulas[-1].div[0]

# 演算
execute unless data storage km_formula:_ formulas[-1].v run function #km_formula:op_select
execute if data storage km_formula:_ formulas[-1].v run function km_formula:private/var

# 呼ぼ出し元のノードを上書き
data modify storage km_formula:_ formulas[-2].div[0] set from storage km_formula:_ formulas[-1]

# 最新のノードを削除
data remove storage km_formula:_ formulas[-1]