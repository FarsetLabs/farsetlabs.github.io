#!/bin/bash

for i in *.md; do
    [ -e "$i" ] || continue
    mv "${i}" "${i}.gd"
    gd -o "${i}" "${i}.gd"
done