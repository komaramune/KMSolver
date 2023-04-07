data remove storage km_formula:_ formulas
data modify storage km_formula:_ formulas append from storage km_formula: input
execute if loaded ~ ~ ~ run summon text_display ~ ~ ~ {UUID:[I;1338,0,0,0]}
function km_formula:formula/op_select
kill 53a-0-0-0-0
data modify storage km_formula: output set from storage km_formula:_ formulas[0].n