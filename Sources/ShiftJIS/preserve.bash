#!/usr/bin/env bash
find . -type f -name "*.shp" | while
    read -r shapefile
do
    name="${shapefile%.shp}"
    codepagefile="$name.cpg"
    if
        [ ! -e "$codepagefile" ]
    then
        printf "SJIS\n" > "$codepagefile"
    fi
done
