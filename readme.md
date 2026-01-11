# シェープファイルの文字エンコード

国際的にはＵＴＦ８を標準の文字エンコードとして取り扱う動きを見せて居る。併し、日本の行政が公表するシェープファイルは、専らシフトＪＩＳでエンコードされて居る。其儘のシェープファイルをＧＩＳソフトに読み込むと文字化けする可能性が有る。是を回避すべく、此の企画は各シェープファイルにコードページファイルを追加するバッシュ／パワーシェル・スクリプトを提供する。

## ディレクトリ構造

``` text
SHAPEFILE_ENCODING/                     シェープファイルの文字エンコード
├── Sources/
│   └── ShiftJIS/                       文字エンコードをシフトＪＩＳに設定する
│       ├── overwrite.bash              バッシュ・スクリプト（上書を許可）
│       ├── overwrite.ps1               パワーシェル・スクリプト（上書を許可）
│       ├── preserve.bash               バッシュ・スクリプト（上書を禁止）
│       └── preserve.ps1                パワーシェル・スクリプト（上書を禁止）
├── license.md                          ＭＩＴライセンス
└── readme.md                           説明書
```

# Shapefile Character Encoding

We are internationally moving toward UTF-8 as the standard character encoding. Yet, shapefiles published by Japanese government agencies are encoded exclusively in Shift JIS. If GIS software loads such shapefiles, text may become garbled. To prevent it, this project provides Bash/PowerShell scripts that add a code page file to each shapefile.

## Directory Structure

``` text
SHAPEFILE_ENCODING/                     Shapefile Character Encoding
├── Sources/
│   └── ShiftJIS/                       Set character encoding to ShiftJIS
│       ├── overwrite.bash              Bash Script (Allow Overwriting)
│       ├── overwrite.ps1               PowerShell Script (Allow Overwriting)
│       ├── preserve.bash               Bash Script (Prohibit Overwriting)
│       └── preserve.ps1                PowerShell Script (Prohibit Overwriting)
├── license.md                          MIT License
└── readme.md                           Manual
```
