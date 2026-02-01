#!/usr/bin/env bash
find . -type f -name "*.shp" | while
    IFS= read -r shapefile
do
    codepagefile="${shapefile%.shp}.cpg"
    if
        [ -e "$codepagefile" ]
    then
        :
    else
        echo "SJIS" > "$codepagefile"
    fi
done
