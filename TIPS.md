# Tips

## [Pry](https://github.com/pry/pry)

### `help`
### `cd`
### `ls`
### Special Locals
- `_`
 - 直前のコメンドの結果
- `_ex_`
 - 直前の例外
- `_in_`
 - 入力値
 - 例: `_in_[2]`
- `_out_`
 - 出力値
 - 例: `_out_[2]`
- `_dir_`
 - ディレクトリパス
- `_file_`
 - ファイルパス

### `find-method`
`find-method index`

### `show-method`
### `edit-method`

### `show-models`
### `show-routes`
- `show-routes --grep XXX`

### `show-middlewares`

### `reload!`

### `copy`
### `sql`
### `caller_method`
### `command;`
- セミコロンを末尾に書くと標準出力に結果が表示されない

### `show-stack`

### `hist`

## ログ
- `/assets`配下のログが邪魔なので排除
 - `lib/quiet_assets.rb`にて対応
- `WARN  Could not determine content-length of response body. Set content-length of the response or set Response#chunked = true`
 - Webrickのバグらしい。thinにすることで解消
