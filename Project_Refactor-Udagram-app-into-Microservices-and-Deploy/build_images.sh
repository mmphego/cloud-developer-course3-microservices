#!/bin/bash

find . -name 'Dockerfile' -print0 | while IFS= read -r -d '' line; do
    pushd $(dirname $line)
    rm -rf node_modules
    npm audit fix
    npm i
    docker build --no-cache -t "$USER/$(basename $PWD)" .
    popd
done
