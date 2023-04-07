execute unless data storage km_formula:_ formulas[-1].add[0].n run function km_formula:formula/operations/add/l
execute unless data storage km_formula:_ formulas[-1].add[1].n run function km_formula:formula/operations/add/r
data modify storage km_float_op: input.x set from storage km_formula:_ formulas[-1].add[0].n
data modify storage km_float_op: input.y set from storage km_formula:_ formulas[-1].add[1].n
function km_float_op:operations/private/add
data modify storage km_formula:_ formulas[-1] set value {n:0f}
data modify storage km_formula:_ formulas[-1].n set from storage km_float_op: output
# tellraw @a [{"text":"input:"},{"nbt":"formulas","storage":"km_formula:_"},{"text":", output:"},{"nbt":"output","storage":"km_float_op:"}]