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

入力ストレージを初期化
data remove storage km_solver: inputs

入力ストレージに数式を入力（値の後にfサフィックスをつけてfloat型を明示することを推奨）
2.0 + 3.0
data modify storage km_solver: inputs append value {f:{add:[{n:2.0f},{n:3.0f}]}}

変数ストレージに値を代入、変数名はA~Zのアルファベット一文字のString
A = 1.5
data modify storage km_solver: vars set value {A:1.5f}

定数の代わりに変数を使用
A / 3.0
data modify storage km_solver: inputs append value {f:{div:[{v:"A"},{n:3.0f}]}}

計算結果を変数に代入（以降の計算に反映）
B = A * 3.0
data modify storage km_solver: inputs append value {v:"B",f:{mul:[{v:"A"},{n:3.0f}]}}

演算はネスト可能
(A * 4.0)-(B / 2.0)
data modify storage km_solver: inputs append value {f:{sub:[{mul:[{v:"A"},{n:4.0f}]},{div:[{v:"B"},{n:2.0f}]}]}}

計算処理実行（プレイヤの位置などの読み込まれている座標で実行する必要あり）
function km_solver:solve

出力ストレージに結果が格納される
data get storage km_solver: outputs
->[5.0f.0.5f,4.5f,3.75f]
```

# 連絡先
不具合や要望などがあればTwitterまでご連絡ください
https://twitter.com/komaramune