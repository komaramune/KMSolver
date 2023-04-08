# 除算の左辺

# 新しいノードを追加
data modify storage km_formula:_ formulas append from storage km_formula:_ formulas[-1].div[0]

# 演算
function km_formula:formula/op_select

# 呼ぼ出し元のノードを上書き
data modify storage km_formula:_ formulas[-2].div[0] set from storage km_formula:_ formulas[-1]

# 最新のノードを削除
data remove storage km_formula:_ formulas[-1]