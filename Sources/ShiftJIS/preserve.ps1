Get-ChildItem -Recurse -Filter *.shp | ForEach-Object {
    $ShapeFile = $_
    $Name = Join-Path -Path $ShapeFile.DirectoryName -ChildPath $ShapeFile.BaseName
    $CodePageFile = "$Name.cpg"
    if (
        -not (Test-Path -Path $CodePageFile)
    ){
        Set-Content -Path $CodePageFile -Value "SJIS`n"
    }
}
