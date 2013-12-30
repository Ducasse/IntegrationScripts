#!/bin/bash

flatten_version=30
updates_dir=./pharo-update
working_dir=current
current_dir=`pwd`

cd $updates_dir
git pull
cd $current_dir
cp $updates_dir/updates$flatten_version.staged $working_dir

