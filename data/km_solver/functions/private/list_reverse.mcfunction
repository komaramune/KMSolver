# リスト反転

data modify storage km_solver:_ inputs append from storage km_solver:_ outputs[-1]
data remove storage km_solver:_ outputs[-1]
execute if data storage km_solver:_ outputs[0] run function km_solver:private/list_reverse