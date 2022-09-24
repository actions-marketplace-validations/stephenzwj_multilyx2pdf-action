#!/usr/bin/env bash
set -e

echo "Building $1 and generating pdf"
# lyx --export pdf4 $1
# split the the $1 string according to the comma
echo $1 | sed -n 1'p' | tr ',' '\n' | while read word; do
    lyx --export pdf4 $word
    echo "Generated pdf for $word"
done

        