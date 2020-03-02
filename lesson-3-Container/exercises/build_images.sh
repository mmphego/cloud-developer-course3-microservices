#!/bin/bash

find . -name 'Dockerfile' -print0 | while IFS= read -r -d '' line; do
    pushd $(dirname $line)
    npm i
    docker build --no-cache -t "$USER/$(basename $PWD)" .
    popd
done
