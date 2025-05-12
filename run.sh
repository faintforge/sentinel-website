#!/usr/bin/env bash

if ! command -v live-server &> /dev/null; then
    echo "live-server not installed!"
    exit 1
fi

if ! command -v sass &> /dev/null; then
    echo "sass not installed!"
    exit 1
fi

trap terminate EXIT
terminate() {
    pkill live-server
    pkill sass
}

live-server & pid1=$!
sass --watch style/:style/ & pid2=$2
wait
