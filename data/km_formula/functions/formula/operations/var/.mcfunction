# 変数反映

data modify storage km_formula:_ var set from storage km_formula:_ formulas[-1].v
data modify storage km_formula:_ node set value {n:0}

execute if data storage km_formula:_ {var:"A"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.A
execute if data storage km_formula:_ {var:"B"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.B
execute if data storage km_formula:_ {var:"C"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.C
execute if data storage km_formula:_ {var:"D"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.D
execute if data storage km_formula:_ {var:"E"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.E
execute if data storage km_formula:_ {var:"F"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.F
execute if data storage km_formula:_ {var:"G"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.G
execute if data storage km_formula:_ {var:"H"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.H
execute if data storage km_formula:_ {var:"I"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.I
execute if data storage km_formula:_ {var:"J"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.J
execute if data storage km_formula:_ {var:"K"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.K
execute if data storage km_formula:_ {var:"L"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.L
execute if data storage km_formula:_ {var:"M"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.M
execute if data storage km_formula:_ {var:"N"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.N
execute if data storage km_formula:_ {var:"O"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.O
execute if data storage km_formula:_ {var:"P"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.P
execute if data storage km_formula:_ {var:"Q"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.Q
execute if data storage km_formula:_ {var:"R"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.R
execute if data storage km_formula:_ {var:"S"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.S
execute if data storage km_formula:_ {var:"T"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.T
execute if data storage km_formula:_ {var:"U"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.U
execute if data storage km_formula:_ {var:"V"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.V
execute if data storage km_formula:_ {var:"W"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.W
execute if data storage km_formula:_ {var:"X"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.X
execute if data storage km_formula:_ {var:"Y"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.Y
execute if data storage km_formula:_ {var:"Z"} run data modify storage km_formula:_ node.n set from storage km_formula: vars.Z

data modify storage km_formula:_ formulas[-1] set from storage km_formula:_ node