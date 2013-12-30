#! /bin/bash

flatten_version=30
updates_dir=./pharo-update
working_dir="current"
current_dir=$(pwd)
file_cs=$(basename $working_dir/*-Pha-*.cs)
build_number=$(echo $file_cs | sed -e "s/^\([0-9]*\)-.*/\1/")

cd $updates_dir
git add $file_cs
git add updates$flatten_version.staged
git commit -m "Version $build_number"
git push origin 30
cd $current_dir