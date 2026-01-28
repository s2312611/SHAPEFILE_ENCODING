#!/usr/bin/env bash
find . -type f -name "*.shp" | while
    read -r shapefile
do
    name="${shapefile%.shp}"
    codepagefile="$name.cpg"
    printf "SJIS\n" > "$codepagefile"
done
