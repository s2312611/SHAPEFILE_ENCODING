#!/usr/bin/env pwsh
Get-ChildItem -Recurse -Filter *.shp | ForEach-Object {
    $Shapefile = $_
    $Name = Join-Path -Path $Shapefile.DirectoryName -ChildPath $Shapefile.BaseName
    $CodePageFile = "$Name.cpg"
    if (
        -not (Test-Path -Path $CodePageFile)
    ){
        Set-Content -Path $CodePageFile -Value "SJIS`n"
    }
}
