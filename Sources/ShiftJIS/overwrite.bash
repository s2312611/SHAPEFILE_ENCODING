#!/usr/bin/env bash
find . -type f -name "*.shp" -print0 | while
    IFS= read -r -d "" shapefile
do
    codepagefile="${shapefile%.shp}.cpg"
    echo "SJIS" > "$codepagefile"
done
