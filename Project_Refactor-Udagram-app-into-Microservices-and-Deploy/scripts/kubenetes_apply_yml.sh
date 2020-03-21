#!/bin/bash

find . -type d -name 'k8s' -print0 | while IFS= read -r -d '' line; do
    pushd $(dirname $line)/k8s;
    for i in $(ls *.yaml); do
        echo $i;
        kubectl apply -f $i;
    done;
    popd;
done
