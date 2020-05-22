#!/usr/bin/env bash

for f in *; do
    if [ -d ${f} ]; then
        flawfinder --falsepositive -m 3 ${f}/*.cc > ~/${f}-files.out
    fi
done
