# シェープファイルの文字エンコード

国際的にはＵＴＦ８を標準の文字エンコードとして取り扱う動きを見せて居る。併し、日本の行政が公表するシェープファイルは、専らシフトＪＩＳでエンコードされて居る。其儘のシェープファイルをＧＩＳソフトに読み込むと文字化けする可能性が有る。是を回避すべく、此の企画は各シェープファイルにコードページファイルを追加するバッシュ／パワーシェル／コマンドプロンプト・スクリプトを提供する。

キーワード：地理情報システム（ＧＩＳ）、ＡｒｃＧＩＳ、ＱＧＩＳ、文字エンコード、シフトＪＩＳ（`SJIS`）、シェープファイル（`.shp`）、コードページファイル（`.cpg`）、バッシュ（`.sh`、`.bash`）、パワーシェル（`.ps1`）、コマンドプロンプト（`.bat`）。

## 目次

- [Manual in English](#shapefile-character-encoding)
- [スクリプトのダウンロード](#スクリプトのダウンロード)
- [ディレクトリ構造](#ディレクトリ構造)

## スクリプトのダウンロード

- [バッシュ・スクリプト（上書を許可）](https://raw.githubusercontent.com/s2312611/SHAPEFILE_ENCODING/Ver.01/Sources/ShiftJIS/overwrite.bash)
- [バッシュ・スクリプト（上書を禁止）](https://raw.githubusercontent.com/s2312611/SHAPEFILE_ENCODING/Ver.01/Sources/ShiftJIS/preserve.bash)
- [パワーシェル・スクリプト（上書を許可）](https://raw.githubusercontent.com/s2312611/SHAPEFILE_ENCODING/Ver.01/Sources/ShiftJIS/overwrite.ps1)
- [パワーシェル・スクリプト（上書を禁止）](https://raw.githubusercontent.com/s2312611/SHAPEFILE_ENCODING/Ver.01/Sources/ShiftJIS/preserve.ps1)
- [コマンドプロンプト・スクリプト（上書を許可）](https://raw.githubusercontent.com/s2312611/SHAPEFILE_ENCODING/Ver.01/Sources/ShiftJIS/overwrite.bat)
- [コマンドプロンプト・スクリプト（上書を禁止）](https://raw.githubusercontent.com/s2312611/SHAPEFILE_ENCODING/Ver.01/Sources/ShiftJIS/preserve.bat)

リンクをクリックすると、最新版のスクリプトがブラウザーに表示されます。ブラウザーの機能で保存して下さい（通常のショートカットキー：`Ctrl/Cmd + S`）。或いは、リンクをコピーして、バッシュでは`curl --output $出力ファイル $リンク`、パワーシェルでは`Invoke-WebRequest -OutFile $出力ファイル -Uri $リンク`を実行して保存できます。但し、`$出力ファイル`は保存先のファイルへのパスに、`$リンク`はコピーしたリンクに置き換えて下さい。

## ディレクトリ構造

``` text
SHAPEFILE_ENCODING/                     シェープファイルの文字エンコード
├── Sources/
│   └── ShiftJIS/                       文字エンコードをシフトＪＩＳに設定する
│       ├── overwrite.dat               コマンドプロンプト・スクリプト（上書を許可）
│       ├── overwrite.sh                バッシュ・スクリプト（上書を許可）
│       ├── overwrite.ps1               パワーシェル・スクリプト（上書を許可）
│       ├── preserve.dat                コマンドプロンプト・スクリプト（上書を禁止）
│       ├── preserve.sh                 バッシュ・スクリプト（上書を禁止）
│       └── preserve.ps1                パワーシェル・スクリプト（上書を禁止）
├── license.md                          ＭＩＴライセンス
└── readme.md                           説明書
```

# Shapefile Character Encoding

We are internationally moving toward UTF-8 as the standard character encoding. Yet, shapefiles published by Japanese government agencies are encoded exclusively in Shift JIS. If GIS software loads such shapefiles, text may become garbled. To prevent it, this project provides Bash / PowerShell / Command Prompt scripts that add a code page file to each shapefile.

Keywords: Geographic Information System (GIS), ArcGIS, QGIS, Character Encoding, Shift JIS (`SJIS`), Shapefile (`.shp`), Code Page File (`.cpg`), Bash (`.sh`、`.bash`), PowerShell (`.ps1`), and Command Prompt (`.bat`).

## Table of Contents

- [日本語版説明書](#シェープファイルの文字エンコード)
- [Script Download](#script-download)
- [Directory Structure](#directory-structure)

## Script Download

- [Bash Script (Allow Overwriting)](https://raw.githubusercontent.com/s2312611/SHAPEFILE_ENCODING/Ver.01/Sources/ShiftJIS/overwrite.bash)
- [Bash Script (Prohibit Overwriting)](https://raw.githubusercontent.com/s2312611/SHAPEFILE_ENCODING/Ver.01/Sources/ShiftJIS/preserve.bash)
- [PowerShell Script (Allow Overwriting)](https://raw.githubusercontent.com/s2312611/SHAPEFILE_ENCODING/Ver.01/Sources/ShiftJIS/overwrite.ps1)
- [PowerShell Script (Prohibit Overwriting)](https://raw.githubusercontent.com/s2312611/SHAPEFILE_ENCODING/Ver.01/Sources/ShiftJIS/preserve.ps1)
- [Command Prompt (Allow Overwriting)](https://raw.githubusercontent.com/s2312611/SHAPEFILE_ENCODING/Ver.01/Sources/ShiftJIS/overwrite.bat)
- [Command Prompt (Prohibit Overwriting)](https://raw.githubusercontent.com/s2312611/SHAPEFILE_ENCODING/Ver.01/Sources/ShiftJIS/preserve.bat)

Click the link to display the latest version of the script on browser. Save it using the browser's function (common shortcut key: `Ctrl/Cmd + S`). Alternatively, copy the link and execute `curl --output $outfile $link` in Bash or `Invoke-WebRequest -OutFile $outfile -Uri $link` in PowerShell, replacing `$outfile` with the path to the file where you would like to save it and `$link` with the link you copied earlier.

## Directory Structure

``` text
SHAPEFILE_ENCODING/                     Shapefile Character Encoding
├── Sources/
│   └── ShiftJIS/                       Set character encoding to ShiftJIS
│       ├── overwrite.dat               Command Prompt (Allow Overwriting)
│       ├── overwrite.sh                Bash Script (Allow Overwriting)
│       ├── overwrite.ps1               PowerShell Script (Allow Overwriting)
│       ├── preserve.dat                Command Prompt (Prohibit Overwriting)
│       ├── preserve.sh                 Bash Script (Prohibit Overwriting)
│       └── preserve.ps1                PowerShell Script (Prohibit Overwriting)
├── license.md                          MIT License
└── readme.md                           Manual
```
