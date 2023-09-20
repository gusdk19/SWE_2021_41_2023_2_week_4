#!/bin/bash

dir="./files/"
files=$(ls "$dir")

for file in $files; do
    new_dir=$(echo "./${file:0:1}/" |  tr '[A-Z]' '[a-z]')
    mv ${dir}${file} ${new_dir}${file}
done