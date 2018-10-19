#!/bin/bash

function stop(){
    lsof -i :9999 | tail -n 1 |grep '9999' && \
    lsof -i :9999 | tail -n 1 | awk '{print $2}' | xargs kill
}
function start(){
    !  lsof -i :9999 | tail -n 1 |grep '9999' && \
    go run "$1/server.go"
}

case "$1" in
    "start" )
        start "$2"
        ;;
    "stop")
        stop
        ;;
esac
