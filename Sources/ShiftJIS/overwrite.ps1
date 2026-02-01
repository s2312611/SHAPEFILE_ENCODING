#!/usr/bin/env pwsh
Get-ChildItem -Recurse -Filter *.shp | ForEach-Object {
    $CodePageFile="$(Join-Path -Path $_.DirectoryName -ChildPath $_.BaseName).cpg"
    Set-Content -Path "$CodePageFile" -Value "SJIS"
}
