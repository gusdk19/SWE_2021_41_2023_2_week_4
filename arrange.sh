#!/bin/bash

old_dir="./files/"
files=$(ls "$old_dir")

for file in $files; do
    new_dir=$(echo "./${file:0:1}/" |  tr '[:upper:]' '[:lower:]')
    mv ${old_dir}${file} ${new_dir}${file}
done