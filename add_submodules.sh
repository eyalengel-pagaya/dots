#!/bin/bash

for dir in $(find . -type d); do
    if [ -d $dir/.git ]; then
        old=`pwd`
        cd $dir
        url=`git config --get remote.origin.url`
        cd $old
        git submodule add $url
    fi
done

