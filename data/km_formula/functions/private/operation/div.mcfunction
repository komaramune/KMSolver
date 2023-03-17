# x / y

data merge storage km_formula:_ {matrix:[1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]}

data modify storage km_formula:_ matrix[3] set from storage km_formula: x
data modify storage km_formula:_ matrix[15] set from storage km_formula: y

data modify entity 53a-0-0-0-0 transformation set from storage km_formula:_ matrix

data modify storage km_formula: result set from entity 53a-0-0-0-0 transformation.translation[0]