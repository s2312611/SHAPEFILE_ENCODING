Get-ChildItem -Recurse -Filter *.shp | ForEach-Object {
    $Shapefile = $_
    $Name = Join-Path -Path $Shapefile.DirectoryName -ChildPath $Shapefile.BaseName
    $CodePageFile = "$Name.cpg"
    Set-Content -Path $CodePageFile -Value "SJIS`n"
}
