data modify storage km_formula:_ formulas append from storage km_formula:_ formulas[-1].add[0]
function km_formula:formula/op_select
data modify storage km_formula:_ formulas[-2].add[0] set from storage km_formula:_ formulas[-1]
data remove storage km_formula:_ formulas[-1]