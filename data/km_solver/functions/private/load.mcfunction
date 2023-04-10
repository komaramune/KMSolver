# タブ補完用
data get storage km_solver:

# 前提ライブラリチェック
execute store success storage km_solver:_ depend_check byte 1.0 run function km_float_op:private/define
execute unless data storage km_solver:_ {disable_error_messages:1b} if data storage km_solver:_ {depend_check:0b} run tellraw @a {"text":"KMSolver エラー:前提ライブラリKMFloatOpが見つかりませんでした。\nhttps://github.com/komaramune/KMFloatOp から導入してください。\nこのメッセージをクリックするとリンクが開きます。","clickEvent":{"action":"open_url","value":"https://github.com/komaramune/KMFloatOp"}}