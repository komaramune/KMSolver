# 変数反映

data modify storage km_solver:_ var set from storage km_solver:_ formulas[-1].v
data modify storage km_solver:_ formulas[-1] set value {n:0}

execute if data storage km_solver:_ {var:"B"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.B
execute if data storage km_solver:_ {var:"C"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.C
execute if data storage km_solver:_ {var:"D"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.D
execute if data storage km_solver:_ {var:"E"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.E
execute if data storage km_solver:_ {var:"F"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.F
execute if data storage km_solver:_ {var:"A"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.A
execute if data storage km_solver:_ {var:"G"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.G
execute if data storage km_solver:_ {var:"H"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.H
execute if data storage km_solver:_ {var:"I"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.I
execute if data storage km_solver:_ {var:"J"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.J
execute if data storage km_solver:_ {var:"K"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.K
execute if data storage km_solver:_ {var:"L"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.L
execute if data storage km_solver:_ {var:"M"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.M
execute if data storage km_solver:_ {var:"N"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.n
execute if data storage km_solver:_ {var:"O"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.O
execute if data storage km_solver:_ {var:"P"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.P
execute if data storage km_solver:_ {var:"Q"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.Q
execute if data storage km_solver:_ {var:"R"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.R
execute if data storage km_solver:_ {var:"S"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.S
execute if data storage km_solver:_ {var:"T"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.T
execute if data storage km_solver:_ {var:"U"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.U
execute if data storage km_solver:_ {var:"V"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.v
execute if data storage km_solver:_ {var:"W"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.W
execute if data storage km_solver:_ {var:"X"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.X
execute if data storage km_solver:_ {var:"Y"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.Y
execute if data storage km_solver:_ {var:"Z"} run data modify storage km_solver:_ formulas[-1].n set from storage km_solver: vars.Z