# KMSolver
Minecraft JEのコマンドで数式から計算を行うためのライブラリです

# できること
NBTで表現された数式の計算

# 対応バージョン
Minecraft Java Edition 1.19.4~

# 前提
このライブラリは以下のライブラリを前提としているため合わせての導入をお願いします
KMFloatOp (https://github.com/komaramune/KMFloatOp)

# 使い方
```
対応している演算の種類
add:加算
sub:減算
mul:乗算
div:除算

ストレージに数式を入力（値の後にfサフィックスをつけてfloat型を明示することを推奨）
1+2
data modify storage km_solver: input set value {add:[{n:1f},{n:2f}]}

値は定数と変数が使用可能
1+A
data modify storage km_solver: input set value {add:[{n:1f},{v:"A"}]}

演算はネストが可能
(A+B)*(C+D)
data modify storage km_solver: input set value {mul:[{add:[{v:"A"},{v:"B"}]},{add:[{v:"C"},{v:"D"}]}]}

ストレージに変数の値を代入、変数名はA~Zのアルファベット一文字（値の後にfサフィックスをつけてfloat型を明示することを推奨）
data modify storage km_solver: vars set value {A:3.0f}

計算処理実行（プレイヤの位置などの読み込まれている座標で実行すること）
function km_solver:solve

実行後ストレージに結果が格納される
data get storage km_solver: output
```

# 連絡先
不具合や要望などがあればTwitterまでご連絡ください
https://twitter.com/komaramune