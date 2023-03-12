# x + y

data merge storage km_formula:_ {transformation:[1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]}

data modify storage km_formula:_ transformation[0] set from storage km_formula: x
data modify storage km_formula:_ transformation[1] set from storage km_formula: y
data modify storage km_formula:_ transformation[4] set from storage km_formula: y
data modify storage km_formula:_ transformation[5] set from storage km_formula: x

data modify entity 53a-0-0-0-0 transformation set from storage km_formula:_ transformation

data modify storage km_formula: result set from entity 53a-0-0-0-0 transformation.scale[0]