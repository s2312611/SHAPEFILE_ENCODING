#!/usr/bin/env pwsh
Get-ChildItem -Recurse -Filter *.shp | ForEach-Object {
    $CodePageFile="$(Join-Path -Path $_.DirectoryName -ChildPath $_.BaseName).cpg"
    if (
        Test-Path -Path $CodePageFile
    ){} else {
        Set-Content -Path "$CodePageFile" -Value "SJIS"
    }
}
