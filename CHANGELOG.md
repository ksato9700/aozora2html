<a name="0.6.1"></a>
## 0.6.1

### Bug Fixes

* Encoding::CompatibilityErrorエラーが出ることがあるのを修正した
* READMEに説明を追加した

<a name="0.6.0"></a>
## 0.6.0

### Bug Fixes

* helpメッセージを修正した

### Features

* `--use-unicode`オプションでU+XXXX表記も数値実体参照として表示できるようにした
* Code Climateを導入して警告が出た部分を一部修正した

<a name="0.5.0"></a>
## 0.5.0

### Bug Fixes

* Windowsで動かなかったのを修正した (#10)
* Aozora2HtmlTestでAozora2Htmlインスタンスを必ずcloseするように修正した

### Features

* `--use-jisx0213`オプションでアクセント文字も数値実体参照として表示できるようにした

<a name="0.4.0"></a>
## 0.4.0

### Features

* 第1引数にファイル名ではなく`http://...`といったURLを与えた場合、そのURLのファイルをダウンロードしHTMLに変換するようにした
* 第2引数が省略された場合、結果をファイルではなく標準出力に出力するようにした

<a name="0.3.0"></a>
## 0.3.0

### Features

* `--use-jisx0213`オプションでJIS X 0213外字を画像ではなく数値実体参照として表示できるようにした

<a name="0.2.0"></a>
## 0.2.0

### Features

* 入力ファイルとして www.aozora.gr.jp で配布しているzipファイルも直接読み込めるようにした
* `--gaiji-dir`オプションで外字ディレクトリを指定できるようにした
* `-v` (`--version`)オプションと`-h` (`--help`)オプションを追加した

<a name="0.1.0"></a>
## 0.1.0 (2015-10-26)

### Features

* 最初のリリース
